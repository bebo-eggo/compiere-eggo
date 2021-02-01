insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'S504','S504 - modification écritures Comptes de Liaison',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = 'S504' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'S504 - modification écritures Comptes de Liaison', description = '' 
where EntityType = 'S504' ;

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'S504',(select AD_Reference_ID from AD_Reference where Name = '_Entity Type'),
'',
'S504',
'S504 - modification écritures Comptes de Liaison',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'S504'  and ad_reference_id in (select ad_reference_id from ad_reference where name = '_Entity Type'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = '_Entity Type'), description = '', entitytype = 'S504', name = 'S504 - modification écritures Comptes de Liaison', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'S504'  and ad_reference_id in (select ad_reference_id from ad_reference where name = '_Entity Type');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='S504' and ad_reference_id in (select ad_reference_id from ad_reference where name = '_Entity Type')), 'fr_FR', 'Y', '','S504 - modification écritures Comptes de Liaison'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='S504' and ad_reference_id in (select ad_reference_id from ad_reference where name = '_Entity Type')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'S504 - modification écritures Comptes de Liaison' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='S504' and ad_reference_id in (select ad_reference_id from ad_reference where name = '_Entity Type')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'S504',(select AD_Reference_ID from AD_Reference where Name = '_Entity Type'),
'',
'S504',
'S504 - modification écritures Comptes de Liaison',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'S504'  and ad_reference_id in (select ad_reference_id from ad_reference where name = '_Entity Type'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = '_Entity Type'), description = '', entitytype = 'S504', name = 'S504 - modification écritures Comptes de Liaison', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'S504'  and ad_reference_id in (select ad_reference_id from ad_reference where name = '_Entity Type');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='S504' and ad_reference_id in (select ad_reference_id from ad_reference where name = '_Entity Type')), 'fr_FR', 'Y', '','S504 - modification écritures Comptes de Liaison'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='S504' and ad_reference_id in (select ad_reference_id from ad_reference where name = '_Entity Type')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'S504 - modification écritures Comptes de Liaison' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='S504' and ad_reference_id in (select ad_reference_id from ad_reference where name = '_Entity Type')) and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'AD_Intercompany_Acct','',
'S504',
'',
'Compte de Liaison',
'',
'',
'',
'',
'Compte de Liaison',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'AD_Intercompany_Acct' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S504', help = '', name = 'Compte de Liaison', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Compte de Liaison', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'AD_Intercompany_Acct' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='AD_Intercompany_Acct'), 'fr_FR', 'Y', '','','Compte de Liaison','','','','','Compte de Liaison'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='AD_Intercompany_Acct') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Compte de Liaison',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Compte de Liaison' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='AD_Intercompany_Acct') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Intercompany_Acct',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Intercompany_Acct'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Account'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_Org'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'S504',
22,
'',
'Compte de Liaison',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Intercompany_Acct'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Intercompany_Acct'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Account'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_Org'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'S504', fieldlength = 22, help = '', name = 'Compte de Liaison', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Intercompany_Acct'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Intercompany_Acct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')), 'fr_FR', 'Y', 'Compte de Liaison'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Intercompany_Acct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Compte de Liaison' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Intercompany_Acct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_AcctSchema_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_AcctSchema_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_Org'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Rules for accounting',
'S504',
22,
'An Accounting Schema defines the rules used in accounting such as costing method, currency and calendar',
'Accounting Schema',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_AcctSchema_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_AcctSchema_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_Org'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Rules for accounting', entitytype = 'S504', fieldlength = 22, help = 'An Accounting Schema defines the rules used in accounting such as costing method, currency and calendar', name = 'Accounting Schema', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_AcctSchema_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_AcctSchema_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')), 'fr_FR', 'Y', 'Plan comptable'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_AcctSchema_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Plan comptable' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_AcctSchema_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Intercompany_Acct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Organization_143' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')),
'Compte de Liaison',
'',
22,
'',
'S504',
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Intercompany_Acct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Organization_143' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')), name = 'Compte de Liaison', description = '', displaylength = 22, displaylogic = '', entitytype = 'S504', help = '', obscuretype = '', seqno = 80, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Intercompany_Acct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Intercompany_Acct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'fr_FR', 'Y', '','','Compte de Liaison'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Intercompany_Acct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Compte de Liaison' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Intercompany_Acct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_AcctSchema_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Organization_143' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')),
'Accounting Schema',
'Rules for accounting',
22,
'',
'S504',
'An Accounting Schema defines the rules used in accounting such as costing method, currency and calendar',
'',
70,
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_AcctSchema_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Organization_143' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')), name = 'Accounting Schema', description = 'Rules for accounting', displaylength = 22, displaylogic = '', entitytype = 'S504', help = 'An Accounting Schema defines the rules used in accounting such as costing method, currency and calendar', obscuretype = '', seqno = 70, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_AcctSchema_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_AcctSchema_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'fr_FR', 'Y', 'Définit les paramètres d''une écriture comptable','Définit les paramètres d''une écriture comptable tels que devises, dates, comptes etc...','Plan comptable'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_AcctSchema_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Définit les paramètres d''une écriture comptable',Help = 'Définit les paramètres d''une écriture comptable tels que devises, dates, comptes etc...',Name = 'Plan comptable' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_AcctSchema_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'S504 - modification écritures Comptes de Liaison', description = '' 
where EntityType = 'S504' ;
