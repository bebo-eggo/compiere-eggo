insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EC60','EC60 - Améliorations comptables diverses',
'Améliorations comptables diverses',
'',
'Y',
'',
'',
'',
'Y',
'361',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = 'EC60' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC60 - Améliorations comptables diverses', description = 'Améliorations comptables diverses', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC60' ;

insert into AD_Window (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,Value,name, ad_color_id, ad_image_id, description, entitytype, help, windowtype, winheight, winwidth, isactive, isbetafunctionality, isdefault ,ad_ctxarea_id, iscustomdefault) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Window'),'ZCashCorrectMethod','Correct Cash - Payment Method',
(select AD_Color_ID from AD_Color where Name = ''),
(select AD_Image_ID from AD_Image where Name = ''),
'Correct Cash - Payment Method',
'EC60',
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
where not exists (select 1 from AD_Window where Value = 'ZCashCorrectMethod' );

update AD_Window set Updated = sysdate, UpdatedBy = 0, name = 'Correct Cash - Payment Method', ad_color_id = (select AD_Color_ID from AD_Color where Name = ''), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), description = 'Correct Cash - Payment Method', entitytype = 'EC60', help = '', windowtype = 'M', winheight = 0, winwidth = 0, isactive = 'Y', isbetafunctionality = 'N', isdefault = 'N', ad_ctxarea_id = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), iscustomdefault = 'N' 
where Value = 'ZCashCorrectMethod' ;

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='ZCashCorrectMethod'), 'nl_NL', 'Y', 'Correct Cash - Payment Method','','Correct Cash - Payment Method'
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='ZCashCorrectMethod') and ad_language = 'nl_NL');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Correct Cash - Payment Method',Help = '',Name = 'Correct Cash - Payment Method' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='ZCashCorrectMethod') and ad_language = 'nl_NL';

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='ZCashCorrectMethod'), 'fr_FR', 'Y', 'Rectification Caisse : Méthode de Paiement','','Rectification Caisse : Méthode de Paiement'
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='ZCashCorrectMethod') and ad_language = 'fr_FR');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Rectification Caisse : Méthode de Paiement',Help = '',Name = 'Rectification Caisse : Méthode de Paiement' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='ZCashCorrectMethod') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Pay_SubPaymentRule_ID','',
'EC60',
'',
'Sub Payment Rule',
'',
'',
'',
'',
'Sub Payment Rule',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Pay_SubPaymentRule_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC60', help = '', name = 'Sub Payment Rule', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Sub Payment Rule', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Pay_SubPaymentRule_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Pay_SubPaymentRule_ID'), 'nl_NL', 'Y', '','','Sub Payment Rule','','','','','Sub Payment Rule'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Pay_SubPaymentRule_ID') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sub Payment Rule',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Sub Payment Rule' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Pay_SubPaymentRule_ID') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Pay_SubPaymentRule_ID'), 'fr_FR', 'Y', '','','Sous-Méthode de Paiement','','','','','Sous-Méthode de Paiement'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Pay_SubPaymentRule_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sous-Méthode de Paiement',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Sous-Méthode de Paiement' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Pay_SubPaymentRule_ID') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'CashDiffGlobal','',
'EC60',
'',
'Cash Diff Global',
'',
'',
'',
'',
'Cash Diff Global',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'CashDiffGlobal' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC60', help = '', name = 'Cash Diff Global', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Cash Diff Global', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'CashDiffGlobal' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='CashDiffGlobal'), 'nl_NL', 'Y', '','','Cash Diff Global','','','','','Cash Diff Global'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='CashDiffGlobal') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Cash Diff Global',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Cash Diff Global' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='CashDiffGlobal') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='CashDiffGlobal'), 'fr_FR', 'Y', '','','Ecart Caisse Total','','','','','Ecart Caisse Total'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='CashDiffGlobal') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Ecart Caisse Total',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Ecart Caisse Total' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='CashDiffGlobal') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ZSubPaymentRule_ID',(select AD_Element_ID from AD_Element where ColumnName = 'ZSubPaymentRule_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_Payment'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'ZSubPaymentRuleOfBank'),
'',
'@SQL=SELECT ZSUBPAYMENTRULE_ID AS DefaultValue FROM C_BANKACCOUNTDOC WHERE C_BankAccount_ID=@C_BankAccount_ID@',
'',
'EC60',
22,
'',
'Sub Payment Rule',
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
where not exists (select 1 from AD_Column where ColumnName = 'ZSubPaymentRule_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ZSubPaymentRule_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Payment'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'ZSubPaymentRuleOfBank'), callout = '', defaultvalue = '@SQL=SELECT ZSUBPAYMENTRULE_ID AS DefaultValue FROM C_BANKACCOUNTDOC WHERE C_BankAccount_ID=@C_BankAccount_ID@', description = '', entitytype = 'EC60', fieldlength = 22, help = '', name = 'Sub Payment Rule', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'Y', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ZSubPaymentRule_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')), 'nl_NL', 'Y', 'Sub Payment Rule'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sub Payment Rule' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')), 'fr_FR', 'Y', 'Sous méthode de paiement'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sous méthode de paiement' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'CashDiffGlobal',(select AD_Element_ID from AD_Element where ColumnName = 'CashDiffGlobal'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Amount'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_BankStatement'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC60',
22,
'',
'Cash Diff Global',
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
'(NVL(C_BankStatement.CashDiff,0) + (SELECT NVL(SUM(NVL(bsl.ChargeAmt,0)),0) FROM C_BankStatementLine bsl INNER JOIN C_Charge c ON (bsl.C_Charge_ID=c.C_Charge_ID) WHERE bsl.C_BankStatement_ID=C_BankStatement.C_BankStatement_ID AND c.IsCashDiff=''Y''))',
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
where not exists (select 1 from AD_Column where ColumnName = 'CashDiffGlobal'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'CashDiffGlobal'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Amount'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_BankStatement'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC60', fieldlength = 22, help = '', name = 'Cash Diff Global', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '(NVL(C_BankStatement.CashDiff,0) + (SELECT NVL(SUM(NVL(bsl.ChargeAmt,0)),0) FROM C_BankStatementLine bsl INNER JOIN C_Charge c ON (bsl.C_Charge_ID=c.C_Charge_ID) WHERE bsl.C_BankStatement_ID=C_BankStatement.C_BankStatement_ID AND c.IsCashDiff=''Y''))', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'CashDiffGlobal'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CashDiffGlobal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')), 'nl_NL', 'Y', 'Cash Diff Global'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CashDiffGlobal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Cash Diff Global' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CashDiffGlobal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CashDiffGlobal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')), 'fr_FR', 'Y', 'Ecart Caisse Total'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CashDiffGlobal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Ecart Caisse Total' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CashDiffGlobal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Pay_SubPaymentRule_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Pay_SubPaymentRule_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = 'ZSubPaymentRule_ID'),
(select AD_Table_ID from AD_Table where TableName = 'C_BankStatementLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC60',
22,
'',
'Sub Payment Rule',
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
where not exists (select 1 from AD_Column where ColumnName = 'Pay_SubPaymentRule_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Pay_SubPaymentRule_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'ZSubPaymentRule_ID'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_BankStatementLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC60', fieldlength = 22, help = '', name = 'Sub Payment Rule', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Pay_SubPaymentRule_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Pay_SubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')), 'nl_NL', 'Y', 'Sub Payment Rule'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Pay_SubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sub Payment Rule' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Pay_SubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Pay_SubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')), 'fr_FR', 'Y', 'Sous-Méthode de Paiement'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Pay_SubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sous-Méthode de Paiement' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Pay_SubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_language = 'fr_FR';

insert into AD_Tab (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,Value,name, ad_columnsortorder_id, ad_columnsortyesno_id, ad_column_id, ad_image_id, ad_process_id, ad_table_id, ad_window_id, commitwarning, description, entitytype, help, importfields, included_tab_id, orderbyclause, seqno, tablevel, whereclause, isactive, hastree, isinfotab, isreadonly, issinglerow, issorttab, istranslationtab, DISPLAYLOGIC, ISADVANCEDTAB, ISINSERTRECORD, READONLYLOGIC, AD_CTXAREA_ID, ISDISPLAYED, REFERENCED_TAB_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Tab'),'Payment','Payment',
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'C_Payment')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'C_Payment')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'C_Payment')),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_Payment'),
(select AD_Window_ID from AD_Window where Value = 'ZCashCorrectMethod'),
'',
'',
'EC60',
'',
'N',
(select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'ZCashCorrectMethod')),
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
'N',
'',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
'Y',
(select AD_Tab_ID from AD_Tab where Value = '')
 from dual  
where not exists (select 1 from AD_Tab where Value = 'Payment'  and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'));

update AD_Tab set Updated = sysdate, UpdatedBy = 0, name = 'Payment', ad_columnsortorder_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'C_Payment')), ad_columnsortyesno_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'C_Payment')), ad_column_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'C_Payment')), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Payment'), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'ZCashCorrectMethod'), commitwarning = '', description = '', entitytype = 'EC60', help = '', importfields = 'N', included_tab_id = (select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'ZCashCorrectMethod')), orderbyclause = '', seqno = 10, tablevel = 0, whereclause = '', isactive = 'Y', hastree = 'N', isinfotab = 'N', isreadonly = 'N', issinglerow = 'N', issorttab = 'N', istranslationtab = 'N', DISPLAYLOGIC = '', ISADVANCEDTAB = 'N', ISINSERTRECORD = 'N', READONLYLOGIC = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ISDISPLAYED = 'Y', REFERENCED_TAB_ID = (select AD_Tab_ID from AD_Tab where Value = '') 
where Value = 'Payment'  and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod');

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod')), 'nl_NL', 'Y', '','','','Payment'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod')) and ad_language = 'nl_NL');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'Payment' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod')) and ad_language = 'nl_NL';

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod')), 'fr_FR', 'Y', '','','','Payment'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod')) and ad_language = 'fr_FR');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'Payment' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'CashDiffGlobal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Cash Diff Global',
'',
22,
'',
'EC60',
'',
'',
132,
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
132
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'CashDiffGlobal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Cash Diff Global', description = '', displaylength = 22, displaylogic = '', entitytype = 'EC60', help = '', obscuretype = '', seqno = 132, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 132 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'CashDiffGlobal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CashDiffGlobal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_NL', 'Y', '','','Cash Diff Global'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CashDiffGlobal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Cash Diff Global' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CashDiffGlobal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CashDiffGlobal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', '','','Ecart Caisse Total'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CashDiffGlobal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Ecart Caisse Total' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CashDiffGlobal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Payment' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'ZCashCorrectMethod')),
'Account Date',
'General Ledger Date',
7,
'',
'EC60',
'The Account Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.',
'',
40,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Payment' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'ZCashCorrectMethod')), name = 'Account Date', description = 'General Ledger Date', displaylength = 7, displaylogic = '', entitytype = 'EC60', help = 'The Account Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.', obscuretype = '', seqno = 40, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))), 'nl_NL', 'Y', 'Boekstuk Datum.','De boekstuk datum geeft aan welke datum er wordt gebruikt voor het de grootboek mutaties die gegenereerd worden door dit document.','Boekstuk Datum'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Boekstuk Datum.',Help = 'De boekstuk datum geeft aan welke datum er wordt gebruikt voor het de grootboek mutaties die gegenereerd worden door dit document.',Name = 'Boekstuk Datum' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))), 'fr_FR', 'Y', 'Date comptable','Indique la date utilisée en comptabilité pour les écritures générées par ce document.','Date comptable'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Date comptable',Help = 'Indique la date utilisée en comptabilité pour les écritures générées par ce document.',Name = 'Date comptable' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Payment' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'ZCashCorrectMethod')),
'Bank Account',
'Account at the Bank',
22,
'',
'EC60',
'The Bank Account identifies an account at this Bank.',
'',
50,
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Payment' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'ZCashCorrectMethod')), name = 'Bank Account', description = 'Account at the Bank', displaylength = 22, displaylogic = '', entitytype = 'EC60', help = 'The Bank Account identifies an account at this Bank.', obscuretype = '', seqno = 50, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))), 'nl_NL', 'Y', 'Bank Rekening','De bankrekening geeft een rekening aan bij deze bank.','Bank Rekening'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Bank Rekening',Help = 'De bankrekening geeft een rekening aan bij deze bank.',Name = 'Bank Rekening' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))), 'fr_FR', 'Y', 'Compte bancaire','Identifie un compte bancaire','Compte bancaire'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Compte bancaire',Help = 'Identifie un compte bancaire',Name = 'Compte bancaire' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Payment' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'ZCashCorrectMethod')),
'Document No',
'Document sequence number of the document',
30,
'',
'EC60',
'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',
'',
30,
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Payment' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'ZCashCorrectMethod')), name = 'Document No', description = 'Document sequence number of the document', displaylength = 30, displaylogic = '', entitytype = 'EC60', help = 'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', obscuretype = '', seqno = 30, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))), 'nl_NL', 'Y', 'Het volgnummer van het document.','Het documentnummer is gewoonlijk gegenereerd door het systeem en bepaald door het documenttype. Als het document nog niet is opgeslagen, is het voorlopige nummer weergegeven tussen "<>".  Als het documenttype geen automatische documentnummer volgorde heeft en u creeert een nieuw document, dan is het veld document nr leeg. Dit is voor documenten die gewoonlijk een extern nummer hebben (zoals facturen van leveranciers). Als u het veld leeg laat, zal het systeem zelf een documentnummer genereren. De document nr volgorde dat wordt gebruikt voor dit reservenummer wordt beheerd in het scherm "Document nr. onderhouden".','Document Nr'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Het volgnummer van het document.',Help = 'Het documentnummer is gewoonlijk gegenereerd door het systeem en bepaald door het documenttype. Als het document nog niet is opgeslagen, is het voorlopige nummer weergegeven tussen "<>".  Als het documenttype geen automatische documentnummer volgorde heeft en u creeert een nieuw document, dan is het veld document nr leeg. Dit is voor documenten die gewoonlijk een extern nummer hebben (zoals facturen van leveranciers). Als u het veld leeg laat, zal het systeem zelf een documentnummer genereren. De document nr volgorde dat wordt gebruikt voor dit reservenummer wordt beheerd in het scherm "Document nr. onderhouden".',Name = 'Document Nr' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))), 'fr_FR', 'Y', 'Numéros du document','','N° Pièces'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Numéros du document',Help = '',Name = 'N° Pièces' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Payment' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'ZCashCorrectMethod')),
'Document Status',
'The current status of the document',
2,
'',
'EC60',
'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',
'',
70,
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Payment' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'ZCashCorrectMethod')), name = 'Document Status', description = 'The current status of the document', displaylength = 2, displaylogic = '', entitytype = 'EC60', help = 'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field', obscuretype = '', seqno = 70, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))), 'nl_NL', 'Y', 'De huidige status van het document.','De document status geeft de huidige status van een document weer. Als u de document status wilt wijzigen gebruikt u het gewenst document veld.','Document Status'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'De huidige status van het document.',Help = 'De document status geeft de huidige status van een document weer. Als u de document status wilt wijzigen gebruikt u het gewenst document veld.',Name = 'Document Status' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))), 'fr_FR', 'Y', 'Statut actuel du document','Pour changer le statut du document, utiliser le bouton changement de statut document','Statut document'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Statut actuel du document',Help = 'Pour changer le statut du document, utiliser le bouton changement de statut document',Name = 'Statut document' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Payment' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'ZCashCorrectMethod')),
'Organization',
'Organizational entity within Tenant',
22,
'',
'EC60',
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
'',
20,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Payment' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'ZCashCorrectMethod')), name = 'Organization', description = 'Organizational entity within Tenant', displaylength = 22, displaylogic = '', entitytype = 'EC60', help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', obscuretype = '', seqno = 20, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))), 'nl_NL', 'Y', 'Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.','Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.','Organisatie'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.',Help = 'Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.',Name = 'Organisatie' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))), 'fr_FR', 'Y', 'Etablissement au sein d''une société','une unité est une partie d''une société, (établissement, succursale, bureau, etc...).','Organisation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Etablissement au sein d''une société',Help = 'une unité est une partie d''une société, (établissement, succursale, bureau, etc...).',Name = 'Organisation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Payment' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'ZCashCorrectMethod')),
'Payment amount',
'Amount being paid',
22,
'',
'EC60',
'Indicates the amount this payment is for.  The payment amount can be for single or multiple invoices or a partial payment for an invoice.',
'',
60,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Payment' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'ZCashCorrectMethod')), name = 'Payment amount', description = 'Amount being paid', displaylength = 22, displaylogic = '', entitytype = 'EC60', help = 'Indicates the amount this payment is for.  The payment amount can be for single or multiple invoices or a partial payment for an invoice.', obscuretype = '', seqno = 60, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))), 'nl_NL', 'Y', 'Bedrag dat wordt betaald.','Geeft aan voor welk bedrag deze betaling is. Het betaald bedrag kan voor 1 of meerdere facturen zijn of als deelbetaling op een enkele factuur.','Betaald Bedrag'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Bedrag dat wordt betaald.',Help = 'Geeft aan voor welk bedrag deze betaling is. Het betaald bedrag kan voor 1 of meerdere facturen zijn of als deelbetaling op een enkele factuur.',Name = 'Betaald Bedrag' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))), 'fr_FR', 'Y', 'Montant payï¿½','Indique le montant du paiement. Il peut concerner une unique factures ou plusieurs factures ou un paiement partiel.','Montant paiement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Montant payï¿½',Help = 'Indique le montant du paiement. Il peut concerner une unique factures ou plusieurs factures ou un paiement partiel.',Name = 'Montant paiement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Payment' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'ZCashCorrectMethod')),
'Posted',
'Posting status',
1,
'',
'EC60',
'The Posted field indicates the status of the Generation of General Ledger Accounting Lines',
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
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Payment' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'ZCashCorrectMethod')), name = 'Posted', description = 'Posting status', displaylength = 1, displaylogic = '', entitytype = 'EC60', help = 'The Posted field indicates the status of the Generation of General Ledger Accounting Lines', obscuretype = '', seqno = 80, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))), 'nl_NL', 'Y', 'Doorvoer status','Het doorgevoerd veld geeft de status aan van het aanmaken van boekhoud mutaties.','Doorgevoerd'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Doorvoer status',Help = 'Het doorgevoerd veld geeft de status aan van het aanmaken van boekhoud mutaties.',Name = 'Doorgevoerd' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))), 'fr_FR', 'Y', 'Les écritures comptables ont été générées','Indique le statut des écritures comptables','Comptabilisé'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Les écritures comptables ont été générées',Help = 'Indique le statut des écritures comptables',Name = 'Comptabilisé' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsReconciled' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Payment' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'ZCashCorrectMethod')),
'Reconciled',
'Payment is reconciled with bank statement',
1,
'',
'EC60',
'',
'',
90,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsReconciled' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Payment' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'ZCashCorrectMethod')), name = 'Reconciled', description = 'Payment is reconciled with bank statement', displaylength = 1, displaylogic = '', entitytype = 'EC60', help = '', obscuretype = '', seqno = 90, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsReconciled' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsReconciled' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))), 'nl_NL', 'Y', 'Afgeletterde posten','Posten die afletteren tegen elkaar weggestreept kunnen worden (betalingen vs inkoopfacturen of betalingen onderweg)','Afgeletterd'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsReconciled' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Afgeletterde posten',Help = 'Posten die afletteren tegen elkaar weggestreept kunnen worden (betalingen vs inkoopfacturen of betalingen onderweg)',Name = 'Afgeletterd' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsReconciled' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsReconciled' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))), 'fr_FR', 'Y', '','','Réconcilié'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsReconciled' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Réconcilié' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsReconciled' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Payment' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'ZCashCorrectMethod')),
'Sub Payment Rule',
'',
22,
'',
'EC60',
'',
'',
100,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Payment' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'ZCashCorrectMethod')), name = 'Sub Payment Rule', description = '', displaylength = 22, displaylogic = '', entitytype = 'EC60', help = '', obscuretype = '', seqno = 100, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))), 'nl_NL', 'Y', '','','Sub Payment Rule'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sub Payment Rule' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))), 'fr_FR', 'Y', '','','Sous méthode de paiement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sous méthode de paiement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Payment' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'ZCashCorrectMethod')),
'Tenant',
'Identifies the Client/Tenant for this installation.',
22,
'',
'EC60',
'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',
'',
10,
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Payment' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'ZCashCorrectMethod')), name = 'Tenant', description = 'Identifies the Client/Tenant for this installation.', displaylength = 22, displaylogic = '', entitytype = 'EC60', help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', obscuretype = '', seqno = 10, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))), 'nl_NL', 'Y', 'Client voor deze installatie.','Een client is een bedrijf of een rechtspersoon.','Client'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Client voor deze installatie.',Help = 'Een client is een bedrijf of een rechtspersoon.',Name = 'Client' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))), 'fr_FR', 'Y', 'Nom de l''entreprise titulaire de la base de données (DB)','','Société'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Nom de l''entreprise titulaire de la base de données (DB)',Help = '',Name = 'Société' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment' and ad_window_id in (select ad_window_id from ad_window where value = 'ZCashCorrectMethod'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Pay_SubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Sub Payment Rule',
'',
22,
'',
'EC60',
'',
'',
112,
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
112
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Pay_SubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Sub Payment Rule', description = '', displaylength = 22, displaylogic = '', entitytype = 'EC60', help = '', obscuretype = '', seqno = 112, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 112 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Pay_SubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Pay_SubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_NL', 'Y', '','','Sub Payment Rule'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Pay_SubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sub Payment Rule' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Pay_SubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Pay_SubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', '','','Sous-Méthode de Paiement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Pay_SubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sous-Méthode de Paiement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Pay_SubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'ZCashCorrectMethod','Correct Cash - Payment Method',
'W',
'Correct Cash - Payment Method',
'EC60',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = 'ZCashCorrectMethod'),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'ZCashCorrectMethod' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Correct Cash - Payment Method', action = 'W', description = 'Correct Cash - Payment Method', entitytype = 'EC60', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'ZCashCorrectMethod'), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'ZCashCorrectMethod' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='ZCashCorrectMethod'), 'nl_NL', 'Y', 'Correct Cash - Payment Method','Correct Cash - Payment Method'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='ZCashCorrectMethod') and ad_language = 'nl_NL');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Correct Cash - Payment Method',Name = 'Correct Cash - Payment Method' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='ZCashCorrectMethod') and ad_language = 'nl_NL';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='ZCashCorrectMethod'), 'fr_FR', 'Y', 'Rectification Caisse : Méthode de Paiement','Rectification Caisse : Méthode de Paiement'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='ZCashCorrectMethod') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Rectification Caisse : Méthode de Paiement',Name = 'Rectification Caisse : Méthode de Paiement' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='ZCashCorrectMethod') and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC60 - Améliorations comptables diverses', description = 'Améliorations comptables diverses', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC60' ;

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'ZCashCorrectMethod') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'ZCashCorrectMethod')); 

