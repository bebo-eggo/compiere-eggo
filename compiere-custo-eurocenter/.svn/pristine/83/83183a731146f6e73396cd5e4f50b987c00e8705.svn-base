insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'2788','2788-Nouveau champs téléphone magasins',
'',
'',
'Y',
'',
'',
'',
'Y',
'2',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = '2788' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2788-Nouveau champs téléphone magasins', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '2', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2788' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'TelMag','',
'2788',
'',
'TelMag',
'',
'',
'',
'',
'TelMag',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'TelMag' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2788', help = '', name = 'TelMag', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'TelMag', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'TelMag' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='TelMag'), 'fr_FR', 'Y', '','Tel Magasin','','','Tel Magasin','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TelMag') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Tel Magasin',Help = '',PO_PrintName = '',PrintName = 'Tel Magasin',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TelMag') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='TelMag'), 'nl_NL', 'Y', '','TelMag','','','TelMag','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TelMag') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'TelMag',Help = '',PO_PrintName = '',PrintName = 'TelMag',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TelMag') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'TelGest','',
'2788',
'',
'TelGest',
'',
'',
'',
'',
'TelGest',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'TelGest' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2788', help = '', name = 'TelGest', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'TelGest', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'TelGest' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='TelGest'), 'fr_FR', 'Y', '','Tel Gestionnaire','','','Tel Gestionnaire','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TelGest') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Tel Gestionnaire',Help = '',PO_PrintName = '',PrintName = 'Tel Gestionnaire',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TelGest') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='TelGest'), 'nl_NL', 'Y', '','TelGest','','','TelGest','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TelGest') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'TelGest',Help = '',PO_PrintName = '',PrintName = 'TelGest',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TelGest') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'TelSAV','',
'2788',
'',
'Tel SAV',
'',
'',
'',
'',
'Tel SAV',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'TelSAV' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2788', help = '', name = 'Tel SAV', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Tel SAV', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'TelSAV' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='TelSAV'), 'fr_FR', 'Y', '','Tel SAV','','','Tel SAV','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TelSAV') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Tel SAV',Help = '',PO_PrintName = '',PrintName = 'Tel SAV',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TelSAV') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='TelSAV'), 'nl_NL', 'Y', '','Tel SAV','','','Tel SAV','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TelSAV') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Tel SAV',Help = '',PO_PrintName = '',PrintName = 'Tel SAV',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TelSAV') and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'TelSAV',(select AD_Element_ID from AD_Element where ColumnName = 'TelSAV'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_OrgInfo'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2788',
15,
'',
'Tel SAV',
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
where not exists (select 1 from AD_Column where ColumnName = 'TelSAV'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'TelSAV'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_OrgInfo'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2788', fieldlength = 15, help = '', name = 'Tel SAV', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'TelSAV'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='TelSAV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')), 'fr_FR', 'Y', 'Tel SAV'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TelSAV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tel SAV' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TelSAV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='TelSAV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')), 'nl_NL', 'Y', 'Tel SAV'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TelSAV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tel SAV' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TelSAV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'TelGest',(select AD_Element_ID from AD_Element where ColumnName = 'TelGest'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_OrgInfo'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2788',
15,
'',
'TelGest',
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
where not exists (select 1 from AD_Column where ColumnName = 'TelGest'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'TelGest'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_OrgInfo'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2788', fieldlength = 15, help = '', name = 'TelGest', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'TelGest'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='TelGest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')), 'fr_FR', 'Y', 'Tel Gestionnaire'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TelGest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tel Gestionnaire' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TelGest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='TelGest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')), 'nl_NL', 'Y', 'TelGest'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TelGest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'TelGest' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TelGest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'TelMag',(select AD_Element_ID from AD_Element where ColumnName = 'TelMag'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_OrgInfo'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2788',
15,
'',
'TelMag',
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
where not exists (select 1 from AD_Column where ColumnName = 'TelMag'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'TelMag'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_OrgInfo'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2788', fieldlength = 15, help = '', name = 'TelMag', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'TelMag'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='TelMag' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')), 'fr_FR', 'Y', 'Tel Magasin'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TelMag' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tel Magasin' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TelMag' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='TelMag' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')), 'nl_NL', 'Y', 'TelMag'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TelMag' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'TelMag' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TelMag' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'TelSAV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Organization Info_170' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')),
'Tel SAV',
'',
0,
'',
'2788',
'',
'',
330,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'TelSAV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Organization Info_170' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')), name = 'Tel SAV', description = '', displaylength = 0, displaylogic = '', entitytype = '2788', help = '', obscuretype = '', seqno = 330, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'TelSAV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TelSAV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'fr_FR', 'Y', '','','Tel SAV'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TelSAV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Tel SAV' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TelSAV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TelSAV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'nl_NL', 'Y', '','','Tel SAV'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TelSAV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Tel SAV' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TelSAV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'TelGest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Organization Info_170' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')),
'TelGest',
'',
0,
'',
'2788',
'',
'',
320,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'TelGest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Organization Info_170' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')), name = 'TelGest', description = '', displaylength = 0, displaylogic = '', entitytype = '2788', help = '', obscuretype = '', seqno = 320, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'TelGest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TelGest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'fr_FR', 'Y', '','','Tel Gestionnaire'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TelGest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Tel Gestionnaire' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TelGest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TelGest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'nl_NL', 'Y', '','','TelGest'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TelGest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'TelGest' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TelGest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'TelMag' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Organization Info_170' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')),
'TelMag',
'',
0,
'',
'2788',
'',
'',
310,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'TelMag' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Organization Info_170' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')), name = 'TelMag', description = '', displaylength = 0, displaylogic = '', entitytype = '2788', help = '', obscuretype = '', seqno = 310, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'TelMag' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TelMag' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'fr_FR', 'Y', '','','Tel Magasin'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TelMag' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Tel Magasin' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TelMag' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TelMag' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'nl_NL', 'Y', '','','TelMag'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TelMag' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'TelMag' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TelMag' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2788-Nouveau champs téléphone magasins', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '2', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2788' ;

