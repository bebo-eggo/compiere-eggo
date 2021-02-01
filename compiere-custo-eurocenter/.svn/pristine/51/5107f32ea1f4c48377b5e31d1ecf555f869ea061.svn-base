insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'E115','71115 (E115) - Gestion de la TVA Intercompany: Ajouts nouvea',
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
where not exists (select 1 from AD_EntityType where EntityType = 'E115' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '71115 (E115) - Gestion de la TVA Intercompany: Ajouts nouvea', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E115' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsIncy','',
'E115',
'',
'Interco Business Partner',
'',
'',
'',
'',
'Interco Business Partner',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsIncy' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'E115', help = '', name = 'Interco Business Partner', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Interco Business Partner', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsIncy' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,PrintName,PO_PrintName,PO_Name,PO_Description,Help,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsIncy'), 'nl_NL', 'Y', '','Tiers Interco','Tiers Interco','','','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsIncy') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Tiers Interco',PrintName = 'Tiers Interco',PO_PrintName = '',PO_Name = '',PO_Description = '',Help = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsIncy') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,PrintName,PO_PrintName,PO_Name,PO_Description,Help,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsIncy'), 'fr_FR', 'Y', '','Tiers Interco','Tiers Interco','','','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsIncy') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Tiers Interco',PrintName = 'Tiers Interco',PO_PrintName = '',PO_Name = '',PO_Description = '',Help = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsIncy') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsTVAIncyAR','',
'E115',
'',
'TVA Interco Client',
'',
'',
'',
'',
'TVA Interco Client',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsTVAIncyAR' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'E115', help = '', name = 'TVA Interco Client', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'TVA Interco Client', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsTVAIncyAR' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,PrintName,PO_PrintName,PO_Name,PO_Description,Help,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsTVAIncyAR'), 'nl_NL', 'Y', '','TVA Interco Client','TVA Interco Client','','','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsTVAIncyAR') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'TVA Interco Client',PrintName = 'TVA Interco Client',PO_PrintName = '',PO_Name = '',PO_Description = '',Help = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsTVAIncyAR') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,PrintName,PO_PrintName,PO_Name,PO_Description,Help,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsTVAIncyAR'), 'fr_FR', 'Y', '','TVA Interco Client','TVA Interco Client','','','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsTVAIncyAR') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'TVA Interco Client',PrintName = 'TVA Interco Client',PO_PrintName = '',PO_Name = '',PO_Description = '',Help = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsTVAIncyAR') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsTVAIncyAP','',
'E115',
'',
'TVA Interco Vendor',
'',
'',
'',
'',
'TVA Interco Vendor',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsTVAIncyAP' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'E115', help = '', name = 'TVA Interco Vendor', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'TVA Interco Vendor', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsTVAIncyAP' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,PrintName,PO_PrintName,PO_Name,PO_Description,Help,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsTVAIncyAP'), 'nl_NL', 'Y', '','TVA Interco Fournisseur','TVA Interco Fournisseur','','','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsTVAIncyAP') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'TVA Interco Fournisseur',PrintName = 'TVA Interco Fournisseur',PO_PrintName = '',PO_Name = '',PO_Description = '',Help = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsTVAIncyAP') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,PrintName,PO_PrintName,PO_Name,PO_Description,Help,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsTVAIncyAP'), 'fr_FR', 'Y', '','TVA Interco Fournisseur','TVA Interco Fournisseur','','','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsTVAIncyAP') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'TVA Interco Fournisseur',PrintName = 'TVA Interco Fournisseur',PO_PrintName = '',PO_Name = '',PO_Description = '',Help = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsTVAIncyAP') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsTVAIncyAR',(select AD_Element_ID from AD_Element where ColumnName = 'IsTVAIncyAR'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_Tax'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'E115',
1,
'',
'TVA Interco Client',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsTVAIncyAR'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsTVAIncyAR'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Tax'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'E115', fieldlength = 1, help = '', name = 'TVA Interco Client', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsTVAIncyAR'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsTVAIncyAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')), 'nl_NL', 'Y', 'TVA Interco Client'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsTVAIncyAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'TVA Interco Client' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsTVAIncyAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsTVAIncyAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')), 'fr_FR', 'Y', 'TVA Interco Client'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsTVAIncyAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'TVA Interco Client' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsTVAIncyAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsIncy',(select AD_Element_ID from AD_Element where ColumnName = 'IsIncy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_BPartner'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'E115',
1,
'',
'Interco Business Partner',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsIncy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsIncy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_BPartner'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'E115', fieldlength = 1, help = '', name = 'Interco Business Partner', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsIncy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsIncy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')), 'nl_NL', 'Y', 'Interco Business Partner'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsIncy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Interco Business Partner' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsIncy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsIncy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')), 'fr_FR', 'Y', 'Tiers Interco'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsIncy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tiers Interco' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsIncy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsTVAIncyAP',(select AD_Element_ID from AD_Element where ColumnName = 'IsTVAIncyAP'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_Tax'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'E115',
1,
'',
'TVA Interco Vendor',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsTVAIncyAP'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsTVAIncyAP'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Tax'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'E115', fieldlength = 1, help = '', name = 'TVA Interco Vendor', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsTVAIncyAP'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsTVAIncyAP' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')), 'nl_NL', 'Y', 'TVA Interco Vendor'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsTVAIncyAP' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'TVA Interco Vendor' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsTVAIncyAP' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsTVAIncyAP' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')), 'fr_FR', 'Y', 'TVA Interco Fournisseur'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsTVAIncyAP' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'TVA Interco Fournisseur' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsTVAIncyAP' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsIncy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Business Partner_220' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_123')),
'Interco Business Partner',
'',
1,
'',
'E115',
'',
'',
95,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsIncy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Business Partner_220' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_123')), name = 'Interco Business Partner', description = '', displaylength = 1, displaylogic = '', entitytype = 'E115', help = '', obscuretype = '', seqno = 95, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsIncy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsIncy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))), 'nl_NL', 'Y', 'Interco Business Partner','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsIncy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Interco Business Partner',Description = '',Help = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsIncy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsIncy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))), 'fr_FR', 'Y', 'Tiers Interco','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsIncy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tiers Interco',Description = '',Help = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsIncy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsTVAIncyAP' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Tax Rate (Audaxis)_Tax' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Tax Rate (Audaxis)')),
'TVA Interco Vendor',
'',
1,
'',
'E115',
'',
'',
255,
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
255
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsTVAIncyAP' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Rate (Audaxis)_Tax' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Rate (Audaxis)')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Tax Rate (Audaxis)_Tax' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Tax Rate (Audaxis)')), name = 'TVA Interco Vendor', description = '', displaylength = 1, displaylogic = '', entitytype = 'E115', help = '', obscuretype = '', seqno = 255, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 255 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsTVAIncyAP' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Rate (Audaxis)_Tax' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Rate (Audaxis)'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsTVAIncyAP' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Rate (Audaxis)_Tax' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Rate (Audaxis)'))), 'nl_NL', 'Y', 'TVA Interco Vendor','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsTVAIncyAP' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Rate (Audaxis)_Tax' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Rate (Audaxis)'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'TVA Interco Vendor',Description = '',Help = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsTVAIncyAP' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Rate (Audaxis)_Tax' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Rate (Audaxis)'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsTVAIncyAP' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Rate (Audaxis)_Tax' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Rate (Audaxis)'))), 'fr_FR', 'Y', 'TVA Interco Fournisseur','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsTVAIncyAP' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Rate (Audaxis)_Tax' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Rate (Audaxis)'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'TVA Interco Fournisseur',Description = '',Help = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsTVAIncyAP' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Rate (Audaxis)_Tax' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Rate (Audaxis)'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsTVAIncyAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Tax Rate (Audaxis)_Tax' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Tax Rate (Audaxis)')),
'TVA Interco Client',
'',
1,
'',
'E115',
'',
'',
245,
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
245
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsTVAIncyAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Rate (Audaxis)_Tax' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Rate (Audaxis)')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Tax Rate (Audaxis)_Tax' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Tax Rate (Audaxis)')), name = 'TVA Interco Client', description = '', displaylength = 1, displaylogic = '', entitytype = 'E115', help = '', obscuretype = '', seqno = 245, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 245 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsTVAIncyAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Rate (Audaxis)_Tax' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Rate (Audaxis)'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsTVAIncyAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Rate (Audaxis)_Tax' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Rate (Audaxis)'))), 'nl_NL', 'Y', 'TVA Interco Client','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsTVAIncyAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Rate (Audaxis)_Tax' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Rate (Audaxis)'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'TVA Interco Client',Description = '',Help = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsTVAIncyAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Rate (Audaxis)_Tax' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Rate (Audaxis)'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsTVAIncyAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Rate (Audaxis)_Tax' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Rate (Audaxis)'))), 'fr_FR', 'Y', 'TVA Interco Client','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsTVAIncyAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Rate (Audaxis)_Tax' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Rate (Audaxis)'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'TVA Interco Client',Description = '',Help = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsTVAIncyAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Rate (Audaxis)_Tax' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Rate (Audaxis)'))) and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'EC_IsTVAIncyAR_ERR','E115',
'There is another Interco Customer Rate',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'EC_IsTVAIncyAR_ERR' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'E115', msgtext = 'There is another Interco Customer Rate', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'EC_IsTVAIncyAR_ERR' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_IsTVAIncyAR_ERR'), 'nl_NL', 'Y', 'Il existe un autre Taux Interco Client',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_IsTVAIncyAR_ERR') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Il existe un autre Taux Interco Client',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_IsTVAIncyAR_ERR') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_IsTVAIncyAR_ERR'), 'fr_FR', 'Y', 'Il existe un autre Taux Interco Client',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_IsTVAIncyAR_ERR') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Il existe un autre Taux Interco Client',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_IsTVAIncyAR_ERR') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'EC_IsTVAIncyAP_ERR','E115',
'There is another rate Interco Vendor',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'EC_IsTVAIncyAP_ERR' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'E115', msgtext = 'There is another rate Interco Vendor', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'EC_IsTVAIncyAP_ERR' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_IsTVAIncyAP_ERR'), 'nl_NL', 'Y', 'Il existe un autre Taux Interco Fournisseur',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_IsTVAIncyAP_ERR') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Il existe un autre Taux Interco Fournisseur',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_IsTVAIncyAP_ERR') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_IsTVAIncyAP_ERR'), 'fr_FR', 'Y', 'Il existe un autre Taux Interco Fournisseur',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_IsTVAIncyAP_ERR') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Il existe un autre Taux Interco Fournisseur',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_IsTVAIncyAP_ERR') and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '71115 (E115) - Gestion de la TVA Intercompany: Ajouts nouvea', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E115' ;

