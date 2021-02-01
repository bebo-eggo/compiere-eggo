insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EG17','EG17 - ARNBR sur Cde HA',
'',
'',
'Y',
'',
'',
'',
'N',
'3.61',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = 'EG17' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EG17 - ARNBR sur Cde HA', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '3.61', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EG17' ;

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'DOC-COPY',(select AD_Reference_ID from AD_Reference where Name = 'EGGO-CTX'),
'''01'',''02''',
'EG17',
'Description Must Contains a list of document to copy SO-PO',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'DOC-COPY'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'EGGO-CTX'), description = '''01'',''02''', entitytype = 'EG17', name = 'Description Must Contains a list of document to copy SO-PO', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'DOC-COPY'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='DOC-COPY' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')), 'nl_BE', 'Y', '','Description Must Contains a list of document to copy SO-PO'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='DOC-COPY' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Description Must Contains a list of document to copy SO-PO' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='DOC-COPY' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='DOC-COPY' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')), 'fr_FR', 'Y', '','Description Must Contains a list of document to copy SO-PO'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='DOC-COPY' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Description Must Contains a list of document to copy SO-PO' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='DOC-COPY' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'DOC-COPY',(select AD_Reference_ID from AD_Reference where Name = 'EGGO-CTX'),
'''01'',''02''',
'EG17',
'Description Must Contains a list of document to copy SO-PO',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'DOC-COPY'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'EGGO-CTX'), description = '''01'',''02''', entitytype = 'EG17', name = 'Description Must Contains a list of document to copy SO-PO', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'DOC-COPY'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='DOC-COPY' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')), 'nl_BE', 'Y', '','Description Must Contains a list of document to copy SO-PO'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='DOC-COPY' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Description Must Contains a list of document to copy SO-PO' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='DOC-COPY' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='DOC-COPY' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')), 'fr_FR', 'Y', '','Description Must Contains a list of document to copy SO-PO'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='DOC-COPY' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Description Must Contains a list of document to copy SO-PO' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='DOC-COPY' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')) and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Z_ArNbr','',
'EG17',
'',
'AR Nbr.',
'',
'',
'',
'',
'AR Nbr.',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Z_ArNbr' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG17', help = '', name = 'AR Nbr.', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'AR Nbr.', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Z_ArNbr' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_ArNbr'), 'nl_BE', 'Y', '','','AR Nbr.','','','','','AR Nbr.'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_ArNbr') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'AR Nbr.',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'AR Nbr.' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_ArNbr') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_ArNbr'), 'fr_FR', 'Y', '','','AR Nbr.','','','','','AR Nbr.'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_ArNbr') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'AR Nbr.',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'AR Nbr.' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_ArNbr') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_ArNbr',(select AD_Element_ID from AD_Element where ColumnName = 'Z_ArNbr'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_Order'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EG17',
22,
'',
'AR Nbr.',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_ArNbr'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_ArNbr'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Order'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EG17', fieldlength = 22, help = '', name = 'AR Nbr.', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_ArNbr'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_ArNbr' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')), 'nl_BE', 'Y', 'AR Nbr.'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ArNbr' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'AR Nbr.' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ArNbr' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_ArNbr' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')), 'fr_FR', 'Y', 'AR Nbr.'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ArNbr' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'AR Nbr.' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ArNbr' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_ArNbr' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Purchase Order_294' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Purchase Order_181')),
'AR Nbr.',
'',
22,
'',
'EG17',
'',
'',
142,
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
122
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_ArNbr' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Purchase Order_294' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Purchase Order_294' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Purchase Order_181')), name = 'AR Nbr.', description = '', displaylength = 22, displaylogic = '', entitytype = 'EG17', help = '', obscuretype = '', seqno = 142, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 122 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_ArNbr' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Purchase Order_294' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ArNbr' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Purchase Order_294' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181'))), 'nl_BE', 'Y', '','','AR Nbr.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ArNbr' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Purchase Order_294' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'AR Nbr.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ArNbr' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Purchase Order_294' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ArNbr' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Purchase Order_294' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181'))), 'fr_FR', 'Y', '','','AR Nbr.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ArNbr' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Purchase Order_294' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'AR Nbr.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ArNbr' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Purchase Order_294' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181'))) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EG17 - ARNBR sur Cde HA', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '3.61', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EG17' ;
update ad_val_rule set code =
'(C_Order.DocStatus IN (''CO'',''CL'')  or ( C_Order.DocStatus = ''IP'' and C_Order.C_DocTypeTarget_ID in (select C_doctype_id from c_doctype where name = ''Contrat Store'') ) ) AND C_Order.IsReturnTrx=''N''' WHERE name  = 'C_Order excluding RMA' ;


