insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'8571','118571 - Quick Info : Reprendre de la version 380 les quick ',
'',
'',
'Y',
'',
'',
'',
'N',
'380',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = '8571' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '118571 - Quick Info : Reprendre de la version 380 les quick ', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '380', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '8571' ;

insert into AD_Window (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,Value,name, ad_color_id, ad_image_id, description, entitytype, help, windowtype, winheight, winwidth, isactive, isbetafunctionality, isdefault ,ad_ctxarea_id, iscustomdefault) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Window'),'Quick Info_473','Quick Info',
(select AD_Color_ID from AD_Color where Name = ''),
(select AD_Image_ID from AD_Image where Name = ''),
'Quick Info Widget',
'8571',
'Quick Info Widget',
'M',
0,
0,
'Y',
'N',
'N',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
'N'
 from dual  
where not exists (select 1 from AD_Window where Value = 'Quick Info_473' );

update AD_Window set Updated = sysdate, UpdatedBy = 0, name = 'Quick Info', ad_color_id = (select AD_Color_ID from AD_Color where Name = ''), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), description = 'Quick Info Widget', entitytype = '8571', help = 'Quick Info Widget', windowtype = 'M', winheight = 0, winwidth = 0, isactive = 'Y', isbetafunctionality = 'N', isdefault = 'N', ad_ctxarea_id = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), iscustomdefault = 'N' 
where Value = 'Quick Info_473' ;

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='Quick Info_473'), 'fr_FR', 'Y', 'Quick Info Widget','Quick Info Widget','Quick Info'
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Quick Info_473') and ad_language = 'fr_FR');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Quick Info Widget',Help = 'Quick Info Widget',Name = 'Quick Info' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Quick Info_473') and ad_language = 'fr_FR';

insert into AD_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,TableName,accesslevel, ad_val_rule_id, description, entitytype, help, importtable, loadseq, name, replicationtype, isactive, isdeleteable, ishighvolume, issecurityenabled, isview, ad_window_id, po_window_id, referenced_table_id) 
select 0,0,sysdate, sysdate,0,0,2189,'AD_QuickInfo','4',
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Definition of the Quick Info Widget to be attached to a Tab',
'8571',
'Contains definition of Quick Info Widget, including name, description, etc.',
'N',
0,
'Quick Info',
'L',
'Y',
'Y',
'N',
'N',
'N',
(select AD_Window_ID from AD_Window where Value = 'Quick Info_473'),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Table_ID from AD_Table where TableName = '')
 from dual  
where not exists (select 1 from AD_Table where TableName = 'AD_QuickInfo' );

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '4', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = 'Definition of the Quick Info Widget to be attached to a Tab', entitytype = '8571', help = 'Contains definition of Quick Info Widget, including name, description, etc.', importtable = 'N', loadseq = 0, name = 'Quick Info', replicationtype = 'L', isactive = 'Y', isdeleteable = 'Y', ishighvolume = 'N', issecurityenabled = 'N', isview = 'N', ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Quick Info_473'), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'AD_QuickInfo' ;

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='AD_QuickInfo'), 'fr_FR', 'Y', 'Quick Info'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='AD_QuickInfo') and ad_language = 'fr_FR');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Quick Info' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='AD_QuickInfo') and ad_language = 'fr_FR';

insert into AD_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,TableName,accesslevel, ad_val_rule_id, description, entitytype, help, importtable, loadseq, name, replicationtype, isactive, isdeleteable, ishighvolume, issecurityenabled, isview, ad_window_id, po_window_id, referenced_table_id) 
select 0,0,sysdate, sysdate,0,0,2190,'AD_QuickInfoLine','4',
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Definition of the Quick Info Widget items included',
'8571',
'Contains definition of Quick Info Widget items included under one widget.',
'N',
0,
'Quick Info Line',
'L',
'Y',
'Y',
'N',
'N',
'N',
(select AD_Window_ID from AD_Window where Value = 'Quick Info_473'),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Table_ID from AD_Table where TableName = '')
 from dual  
where not exists (select 1 from AD_Table where TableName = 'AD_QuickInfoLine' );

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '4', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = 'Definition of the Quick Info Widget items included', entitytype = '8571', help = 'Contains definition of Quick Info Widget items included under one widget.', importtable = 'N', loadseq = 0, name = 'Quick Info Line', replicationtype = 'L', isactive = 'Y', isdeleteable = 'Y', ishighvolume = 'N', issecurityenabled = 'N', isview = 'N', ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Quick Info_473'), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'AD_QuickInfoLine' ;

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='AD_QuickInfoLine'), 'fr_FR', 'Y', 'Quick Info Line'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='AD_QuickInfoLine') and ad_language = 'fr_FR');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Quick Info Line' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='AD_QuickInfoLine') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'AD_QuickInfo_ID','Quick Info Widget',
'8571',
'Quick Info Widget',
'Quick Info',
'',
'',
'',
'',
'Quick Info',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'AD_QuickInfo_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = 'Quick Info Widget', entitytype = '8571', help = 'Quick Info Widget', name = 'Quick Info', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Quick Info', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'AD_QuickInfo_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='AD_QuickInfo_ID'), 'fr_FR', 'Y', 'Quick Info Widget','Quick Info Widget','Quick Info','','','','','Quick Info'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='AD_QuickInfo_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Quick Info Widget',Help = 'Quick Info Widget',Name = 'Quick Info',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Quick Info' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='AD_QuickInfo_ID') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'AD_QuickInfoLine_ID','',
'8571',
'',
'Quick Info Line',
'',
'',
'',
'',
'Quick Info Line',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'AD_QuickInfoLine_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '8571', help = '', name = 'Quick Info Line', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Quick Info Line', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'AD_QuickInfoLine_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='AD_QuickInfoLine_ID'), 'fr_FR', 'Y', '','','Quick Info Line','','','','','Quick Info Line'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='AD_QuickInfoLine_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Quick Info Line',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Quick Info Line' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='AD_QuickInfoLine_ID') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Created',(select AD_Element_ID from AD_Element where ColumnName = 'Created'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfo'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was created',
'8571',
7,
'The Created On field indicates the date that this record was created.',
'Created On',
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
'N',
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
where not exists (select 1 from AD_Column where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Created'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfo'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was created', entitytype = '8571', fieldlength = 7, help = 'The Created On field indicates the date that this record was created.', name = 'Created On', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')), 'fr_FR', 'Y', 'Cr��'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Cr��' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'EntityType',(select AD_Element_ID from AD_Element where ColumnName = 'EntityType'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = '_EntityTypeNew'),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfo'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'U',
'Dictionary Entity Type; Determines ownership and synchronization',
'8571',
6,
'The Entity Types "Dictionary", "Compiere" and "Application" might be automatically synchronized and customizations deleted or overwritten.    For customizations, copy the entity and select "User"!',
'Entity Type',
'@EntityType@=D | @EntityType@=CWMS | @EntityType@=CMFG | @EntityType@=CMRP',
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
where not exists (select 1 from AD_Column where ColumnName = 'EntityType'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'EntityType'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = '_EntityTypeNew'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfo'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'U', description = 'Dictionary Entity Type; Determines ownership and synchronization', entitytype = '8571', fieldlength = 6, help = 'The Entity Types "Dictionary", "Compiere" and "Application" might be automatically synchronized and customizations deleted or overwritten.    For customizations, copy the entity and select "User"!', name = 'Entity Type', readonlylogic = '@EntityType@=D | @EntityType@=CWMS | @EntityType@=CMFG | @EntityType@=CMRP', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'EntityType'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='EntityType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')), 'fr_FR', 'Y', 'Type entit�'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='EntityType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Type entit�' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='EntityType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'EntityType',(select AD_Element_ID from AD_Element where ColumnName = 'EntityType'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = '_EntityTypeNew'),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'U',
'Dictionary Entity Type; Determines ownership and synchronization',
'8571',
6,
'The Entity Types "Dictionary", "Compiere" and "Application" might be automatically synchronized and customizations deleted or overwritten.    For customizations, copy the entity and select "User"!',
'Entity Type',
'@EntityType@=D | @EntityType@=CWMS | @EntityType@=CMFG | @EntityType@=CMRP',
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
where not exists (select 1 from AD_Column where ColumnName = 'EntityType'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'EntityType'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = '_EntityTypeNew'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'U', description = 'Dictionary Entity Type; Determines ownership and synchronization', entitytype = '8571', fieldlength = 6, help = 'The Entity Types "Dictionary", "Compiere" and "Application" might be automatically synchronized and customizations deleted or overwritten.    For customizations, copy the entity and select "User"!', name = 'Entity Type', readonlylogic = '@EntityType@=D | @EntityType@=CWMS | @EntityType@=CMFG | @EntityType@=CMRP', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'EntityType'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='EntityType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')), 'fr_FR', 'Y', 'Type entit�'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='EntityType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Type entit�' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='EntityType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'SelectClause',(select AD_Element_ID from AD_Element where ColumnName = 'SelectClause'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'SQL SELECT clause',
'8571',
1000,
'The Select Clause indicates the SQL SELECT clause to use for selecting the record for a measure calculation. Do not include the SELECT itself.',
'Sql SELECT',
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
where not exists (select 1 from AD_Column where ColumnName = 'SelectClause'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'SelectClause'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'SQL SELECT clause', entitytype = '8571', fieldlength = 1000, help = 'The Select Clause indicates the SQL SELECT clause to use for selecting the record for a measure calculation. Do not include the SELECT itself.', name = 'Sql SELECT', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'SelectClause'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='SelectClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')), 'fr_FR', 'Y', 'Clause Select'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='SelectClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Clause Select' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='SelectClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'FromClause',(select AD_Element_ID from AD_Element where ColumnName = 'FromClause'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Text'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'SQL FROM clause',
'8571',
2000,
'The From Clause indicates the SQL FROM clause to use for selecting the record for a measure calculation. It can have JOIN clauses. Do not include the FROM itself.',
'SQL FROM',
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
where not exists (select 1 from AD_Column where ColumnName = 'FromClause'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'FromClause'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Text'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'SQL FROM clause', entitytype = '8571', fieldlength = 2000, help = 'The From Clause indicates the SQL FROM clause to use for selecting the record for a measure calculation. It can have JOIN clauses. Do not include the FROM itself.', name = 'SQL FROM', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'FromClause'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='FromClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')), 'fr_FR', 'Y', 'Clause From'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='FromClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Clause From' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='FromClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'WhereClause',(select AD_Element_ID from AD_Element where ColumnName = 'WhereClause'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Text'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Fully qualified SQL WHERE clause',
'8571',
2000,
'The Where Clause indicates the SQL WHERE clause to use for record selection. The WHERE clause entered is added to the query. Fully qualified means "tablename.columnname".',
'Sql WHERE',
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
where not exists (select 1 from AD_Column where ColumnName = 'WhereClause'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'WhereClause'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Text'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Fully qualified SQL WHERE clause', entitytype = '8571', fieldlength = 2000, help = 'The Where Clause indicates the SQL WHERE clause to use for record selection. The WHERE clause entered is added to the query. Fully qualified means "tablename.columnname".', name = 'Sql WHERE', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'WhereClause'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='WhereClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')), 'fr_FR', 'Y', 'Clause SQL '
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='WhereClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Clause SQL ' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='WhereClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'OtherClause',(select AD_Element_ID from AD_Element where ColumnName = 'OtherClause'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Text'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Other SQL Clause',
'8571',
2000,
'Any other complete clause like GROUP BY, HAVING, ORDER BY, etc. after the WHERE clause.',
'Other SQL Clause',
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
where not exists (select 1 from AD_Column where ColumnName = 'OtherClause'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'OtherClause'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Text'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Other SQL Clause', entitytype = '8571', fieldlength = 2000, help = 'Any other complete clause like GROUP BY, HAVING, ORDER BY, etc. after the WHERE clause.', name = 'Other SQL Clause', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'OtherClause'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='OtherClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')), 'fr_FR', 'Y', 'Autre clause'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='OtherClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Autre clause' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='OtherClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Name',(select AD_Element_ID from AD_Element where ColumnName = 'Name'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfo'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Alphanumeric identifier of the entity',
'8571',
60,
'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.',
'Name',
'',
10,
'',
'',
0,
'',
'Y',
'N',
'N',
'Y',
'N',
'Y',
'N',
'Y',
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
where not exists (select 1 from AD_Column where ColumnName = 'Name'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Name'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfo'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Alphanumeric identifier of the entity', entitytype = '8571', fieldlength = 60, help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.', name = 'Name', readonlylogic = '', seqno = 10, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'Y', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'Y', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Name'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')), 'fr_FR', 'Y', 'Nom'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Nom' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_QuickInfo_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_QuickInfo_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'ID'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfo'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Quick Info Widget',
'8571',
10,
'Quick Info Widget',
'Quick Info',
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
'Y',
'Y',
'N',
'N',
'N',
'N',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_QuickInfo_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_QuickInfo_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'ID'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfo'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Quick Info Widget', entitytype = '8571', fieldlength = 10, help = 'Quick Info Widget', name = 'Quick Info', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'Y', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_QuickInfo_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_QuickInfo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')), 'fr_FR', 'Y', 'Quick Info'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_QuickInfo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Quick Info' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_QuickInfo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfo'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'),
'',
'@#AD_Client_ID@',
'Identifies the Client/Tenant for this installation.',
'8571',
10,
'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',
'Tenant',
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
'N',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfo'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'), callout = '', defaultvalue = '@#AD_Client_ID@', description = 'Identifies the Client/Tenant for this installation.', entitytype = '8571', fieldlength = 10, help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', name = 'Tenant', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')), 'fr_FR', 'Y', 'Soci�t�'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Soci�t�' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Org_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfo'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'),
'',
'@#AD_Org_ID@',
'Organizational entity within Tenant',
'8571',
10,
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
'Organization',
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
'N',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfo'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'), callout = '', defaultvalue = '@#AD_Org_ID@', description = 'Organizational entity within Tenant', entitytype = '8571', fieldlength = 10, help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', name = 'Organization', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')), 'fr_FR', 'Y', 'Organisation'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organisation' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Updated',(select AD_Element_ID from AD_Element where ColumnName = 'Updated'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfo'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was updated',
'8571',
7,
'The Updated field indicates the date that this record was updated.',
'Updated',
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
'N',
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
where not exists (select 1 from AD_Column where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Updated'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfo'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was updated', entitytype = '8571', fieldlength = 7, help = 'The Updated field indicates the date that this record was updated.', name = 'Updated', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')), 'fr_FR', 'Y', 'Modifi�'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Modifi�' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'CreatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfo'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who created this record',
'8571',
10,
'The Created By field indicates the user who created this record.',
'Created By',
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
'N',
'',
'X',
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfo'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who created this record', entitytype = '8571', fieldlength = 10, help = 'The Created By field indicates the user who created this record.', name = 'Created By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')), 'fr_FR', 'Y', 'Cr��e par'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Cr��e par' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'UpdatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfo'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who updated this records',
'8571',
10,
'The Updated By field indicates the user who updated this record.',
'Updated By',
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
'N',
'',
'X',
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfo'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who updated this records', entitytype = '8571', fieldlength = 10, help = 'The Updated By field indicates the user who updated this record.', name = 'Updated By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')), 'fr_FR', 'Y', 'Modifi� par'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Modifi� par' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsActive',(select AD_Element_ID from AD_Element where ColumnName = 'IsActive'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfo'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'Y',
'The record is active in the system',
'8571',
1,
'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',
'Active',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsActive'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfo'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'Y', description = 'The record is active in the system', entitytype = '8571', fieldlength = 1, help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', name = 'Active', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')), 'fr_FR', 'Y', 'Actif'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Actif' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Reference_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Reference_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Reference Data Types'),
'',
'',
'System Reference and Validation',
'8571',
10,
'The Reference could be a display type, list or table validation.',
'Reference',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Reference_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Reference_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Reference Data Types'), callout = '', defaultvalue = '', description = 'System Reference and Validation', entitytype = '8571', fieldlength = 10, help = 'The Reference could be a display type, list or table validation.', name = 'Reference', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Reference_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Reference_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')), 'fr_FR', 'Y', 'R�f�rence'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Reference_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'R�f�rence' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Reference_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_QuickInfoLine_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_QuickInfoLine_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'ID'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'8571',
10,
'',
'Quick Info Line',
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
'Y',
'Y',
'N',
'N',
'N',
'N',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_QuickInfoLine_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_QuickInfoLine_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'ID'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '8571', fieldlength = 10, help = '', name = 'Quick Info Line', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'Y', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_QuickInfoLine_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_QuickInfoLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')), 'fr_FR', 'Y', 'Quick Info Line'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_QuickInfoLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Quick Info Line' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_QuickInfoLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'),
'',
'@#AD_Client_ID@',
'Identifies the Client/Tenant for this installation.',
'8571',
10,
'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',
'Tenant',
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
'N',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'), callout = '', defaultvalue = '@#AD_Client_ID@', description = 'Identifies the Client/Tenant for this installation.', entitytype = '8571', fieldlength = 10, help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', name = 'Tenant', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')), 'fr_FR', 'Y', 'Soci�t�'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Soci�t�' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Org_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'),
'',
'@#AD_Org_ID@',
'Organizational entity within Tenant',
'8571',
10,
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
'Organization',
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
'N',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'), callout = '', defaultvalue = '@#AD_Org_ID@', description = 'Organizational entity within Tenant', entitytype = '8571', fieldlength = 10, help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', name = 'Organization', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')), 'fr_FR', 'Y', 'Organisation'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organisation' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Created',(select AD_Element_ID from AD_Element where ColumnName = 'Created'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was created',
'8571',
7,
'The Created On field indicates the date that this record was created.',
'Created On',
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
'N',
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
where not exists (select 1 from AD_Column where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Created'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was created', entitytype = '8571', fieldlength = 7, help = 'The Created On field indicates the date that this record was created.', name = 'Created On', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')), 'fr_FR', 'Y', 'Cr��'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Cr��' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Updated',(select AD_Element_ID from AD_Element where ColumnName = 'Updated'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was updated',
'8571',
7,
'The Updated field indicates the date that this record was updated.',
'Updated',
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
'N',
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
where not exists (select 1 from AD_Column where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Updated'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was updated', entitytype = '8571', fieldlength = 7, help = 'The Updated field indicates the date that this record was updated.', name = 'Updated', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')), 'fr_FR', 'Y', 'Modifi�'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Modifi�' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'CreatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who created this record',
'8571',
10,
'The Created By field indicates the user who created this record.',
'Created By',
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
'N',
'',
'X',
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who created this record', entitytype = '8571', fieldlength = 10, help = 'The Created By field indicates the user who created this record.', name = 'Created By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')), 'fr_FR', 'Y', 'Cr��e par'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Cr��e par' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'UpdatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who updated this records',
'8571',
10,
'The Updated By field indicates the user who updated this record.',
'Updated By',
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
'N',
'',
'X',
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who updated this records', entitytype = '8571', fieldlength = 10, help = 'The Updated By field indicates the user who updated this record.', name = 'Updated By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')), 'fr_FR', 'Y', 'Modifi� par'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Modifi� par' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsActive',(select AD_Element_ID from AD_Element where ColumnName = 'IsActive'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'Y',
'The record is active in the system',
'8571',
1,
'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',
'Active',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsActive'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'Y', description = 'The record is active in the system', entitytype = '8571', fieldlength = 1, help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', name = 'Active', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')), 'fr_FR', 'Y', 'Actif'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Actif' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_QuickInfo_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_QuickInfo_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Quick Info Widget',
'8571',
10,
'Quick Info Widget',
'Quick Info',
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
'Y',
'N',
'N',
'N',
'',
'C',
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'AD_QuickInfo_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_QuickInfo_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Quick Info Widget', entitytype = '8571', fieldlength = 10, help = 'Quick Info Widget', name = 'Quick Info', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'Y', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'C', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_QuickInfo_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_QuickInfo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')), 'fr_FR', 'Y', 'Quick Info'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_QuickInfo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Quick Info' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_QuickInfo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Tab_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Tab_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Tab in Window'),
'',
'',
'Tab within a Window',
'8571',
10,
'The Tab indicates a tab that displays within a window.',
'Tab',
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
'R',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'AD_Tab_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Tab_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Tab in Window'), callout = '', defaultvalue = '', description = 'Tab within a Window', entitytype = '8571', fieldlength = 10, help = 'The Tab indicates a tab that displays within a window.', name = 'Tab', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = 'R', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Tab_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Tab_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')), 'fr_FR', 'Y', 'Onglet'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Tab_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Onglet' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Tab_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Window_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Window_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Data entry or display window',
'8571',
10,
'The Window field identifies a unique Window in the system.',
'Window',
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
'R',
'N',
'@AD_Reference_ID@  =19',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'AD_Window_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Window_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Data entry or display window', entitytype = '8571', fieldlength = 10, help = 'The Window field identifies a unique Window in the system.', name = 'Window', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = 'R', ismandatoryui = 'N', MANDATORYLOGIC = '@AD_Reference_ID@  =19', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Window_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Window_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')), 'fr_FR', 'Y', 'Fen�tre'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Window_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Fen�tre' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Window_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Description',(select AD_Element_ID from AD_Element where ColumnName = 'Description'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Optional short description of the record',
'8571',
255,
'A description is limited to 255 characters.',
'Description',
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
'Y',
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
where not exists (select 1 from AD_Column where ColumnName = 'Description'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Description'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Optional short description of the record', entitytype = '8571', fieldlength = 255, help = 'A description is limited to 255 characters.', name = 'Description', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'Y', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Description'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')), 'fr_FR', 'Y', 'Description'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Description' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Name',(select AD_Element_ID from AD_Element where ColumnName = 'Name'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Alphanumeric identifier of the entity',
'8571',
60,
'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.',
'Name',
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
'Y',
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
where not exists (select 1 from AD_Column where ColumnName = 'Name'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Name'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Alphanumeric identifier of the entity', entitytype = '8571', fieldlength = 60, help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.', name = 'Name', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'Y', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Name'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')), 'fr_FR', 'Y', 'Nom'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Nom' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Description',(select AD_Element_ID from AD_Element where ColumnName = 'Description'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfo'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Optional short description of the record',
'8571',
255,
'A description is limited to 255 characters.',
'Description',
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
'Y',
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
where not exists (select 1 from AD_Column where ColumnName = 'Description'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Description'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfo'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Optional short description of the record', entitytype = '8571', fieldlength = 255, help = 'A description is limited to 255 characters.', name = 'Description', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'Y', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Description'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')), 'fr_FR', 'Y', 'Description'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Description' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_QuickInfo_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_QuickInfo_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_Tab'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Quick Info Widget',
'8571',
10,
'Quick Info Widget',
'Quick Info',
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
'R',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'AD_QuickInfo_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Tab'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_QuickInfo_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_Tab'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Quick Info Widget', entitytype = '8571', fieldlength = 10, help = 'Quick Info Widget', name = 'Quick Info', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = 'R', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_QuickInfo_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Tab');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_QuickInfo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Tab')), 'fr_FR', 'Y', 'Quick Info'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_QuickInfo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Tab')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Quick Info' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_QuickInfo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Tab')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_QuickInfo_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_QuickInfo_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_Tab_v'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Quick Info Widget',
'8571',
10,
'Quick Info Widget',
'Quick Info',
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
'',
'R',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'AD_QuickInfo_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Tab_v'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_QuickInfo_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_Tab_v'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Quick Info Widget', entitytype = '8571', fieldlength = 10, help = 'Quick Info Widget', name = 'Quick Info', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_QuickInfo_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Tab_v');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_QuickInfo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Tab_v')), 'fr_FR', 'Y', 'Quick Info'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_QuickInfo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Tab_v')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Quick Info' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_QuickInfo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Tab_v')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsDisplayed',(select AD_Element_ID from AD_Element where ColumnName = 'IsDisplayed'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'Y',
'Determines, if this field is displayed',
'8571',
1,
'If the field is displayed, the field Display Logic will determine at runtime, if it is actually displayed',
'Displayed',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsDisplayed'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsDisplayed'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'Y', description = 'Determines, if this field is displayed', entitytype = '8571', fieldlength = 1, help = 'If the field is displayed, the field Display Logic will determine at runtime, if it is actually displayed', name = 'Displayed', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsDisplayed'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsDisplayed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')), 'fr_FR', 'Y', 'Affich�'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsDisplayed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Affich�' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsDisplayed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'SeqNo',(select AD_Element_ID from AD_Element where ColumnName = 'SeqNo'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Integer'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'@SQL=SELECT COALESCE(MAX(SeqNo),0)+10 AS DefaultValue FROM AD_QuickInfoLine WHERE AD_QuickInfo_ID=@AD_QuickInfo_ID@',
'Method of ordering elements; lowest number comes first',
'8571',
22,
'The Sequence indicates the order of elements',
'Sequence',
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
where not exists (select 1 from AD_Column where ColumnName = 'SeqNo'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'SeqNo'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Integer'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '@SQL=SELECT COALESCE(MAX(SeqNo),0)+10 AS DefaultValue FROM AD_QuickInfoLine WHERE AD_QuickInfo_ID=@AD_QuickInfo_ID@', description = 'Method of ordering elements; lowest number comes first', entitytype = '8571', fieldlength = 22, help = 'The Sequence indicates the order of elements', name = 'Sequence', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'SeqNo'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='SeqNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')), 'fr_FR', 'Y', 'S�quence'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='SeqNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'S�quence' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='SeqNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'DisplayLogic',(select AD_Element_ID from AD_Element where ColumnName = 'DisplayLogic'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Text'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'If the Field is displayed, the result determines if the field is actually displayed',
'8571',
2000,
'format := {expression} [{logic} {expression}]<br>  expression := @{context}@{operand}{value} or @{context}@{operand}{value}<br>  logic := {|}|{&'||'}<br> context := any global or window context <br> value := strings or numbers<br> logic operators := AND or OR with the previous result from left to right <br> operand := eq{=}, gt{&'||'gt;}, le{&'||'lt;}, not{~^!} <br> Examples: <br> @AD_Table_ID@=14 | @Language@!GERGER <br> @PriceLimit@>10 | @PriceList@>@PriceActual@<br> @Name@>J<br> Strings may be in single quotes (optional)',
'Display Logic',
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
'Y',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'DisplayLogic'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'DisplayLogic'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Text'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'If the Field is displayed, the result determines if the field is actually displayed', entitytype = '8571', fieldlength = 2000, help = 'format := {expression} [{logic} {expression}]<br>  expression := @{context}@{operand}{value} or @{context}@{operand}{value}<br>  logic := {|}|{&'||'}<br> context := any global or window context <br> value := strings or numbers<br> logic operators := AND or OR with the previous result from left to right <br> operand := eq{=}, gt{&'||'gt;}, le{&'||'lt;}, not{~^!} <br> Examples: <br> @AD_Table_ID@=14 | @Language@!GERGER <br> @PriceLimit@>10 | @PriceList@>@PriceActual@<br> @Name@>J<br> Strings may be in single quotes (optional)', name = 'Display Logic', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'Y', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'DisplayLogic'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DisplayLogic' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')), 'fr_FR', 'Y', 'Logique d''affichage'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DisplayLogic' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Logique d''affichage' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DisplayLogic' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Reference_Value_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Reference_Value_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_Reference Values'),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Reference List or Table'),
'',
'',
'Required to specify, if data type is Table or List',
'8571',
10,
'The Reference Value indicates where the reference values are stored.  It must be specified if the data type is Table or List.',
'Reference Key',
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
'N',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'AD_Reference_Value_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Reference_Value_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_Reference Values'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Reference List or Table'), callout = '', defaultvalue = '', description = 'Required to specify, if data type is Table or List', entitytype = '8571', fieldlength = 10, help = 'The Reference Value indicates where the reference values are stored.  It must be specified if the data type is Table or List.', name = 'Reference Key', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = 'N', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Reference_Value_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Reference_Value_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')), 'fr_FR', 'Y', 'Valeur de r�f�rence'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Reference_Value_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Valeur de r�f�rence' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Reference_Value_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_QuickInfo_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_QuickInfo_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_Tab_vt'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Quick Info Widget',
'8571',
10,
'Quick Info Widget',
'Quick Info',
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
'',
'R',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'AD_QuickInfo_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Tab_vt'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_QuickInfo_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_Tab_vt'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Quick Info Widget', entitytype = '8571', fieldlength = 10, help = 'Quick Info Widget', name = 'Quick Info', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_QuickInfo_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Tab_vt');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_QuickInfo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Tab_vt')), 'fr_FR', 'Y', 'Quick Info'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_QuickInfo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Tab_vt')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Quick Info' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_QuickInfo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Tab_vt')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Element_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Element_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'System Element enables the central maintenance of column description and help.',
'8571',
10,
'The System Element allows for the central maintenance of help, descriptions and terminology for a database column.',
'System Element',
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
'R',
'N',
'@AD_Reference_ID@  =19',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'AD_Element_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Element_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'System Element enables the central maintenance of column description and help.', entitytype = '8571', fieldlength = 10, help = 'The System Element allows for the central maintenance of help, descriptions and terminology for a database column.', name = 'System Element', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = 'R', ismandatoryui = 'N', MANDATORYLOGIC = '@AD_Reference_ID@  =19', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Element_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Element_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')), 'fr_FR', 'Y', 'El�ment'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Element_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'El�ment' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Element_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_language = 'fr_FR';

insert into AD_Tab (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,Value,name, ad_columnsortorder_id, ad_columnsortyesno_id, ad_column_id, ad_image_id, ad_process_id, ad_table_id, ad_window_id, commitwarning, description, entitytype, help, importfields, included_tab_id, orderbyclause, seqno, tablevel, whereclause, isactive, hastree, isinfotab, isreadonly, issinglerow, issorttab, istranslationtab, DISPLAYLOGIC, ISADVANCEDTAB, ISINSERTRECORD, READONLYLOGIC, AD_CTXAREA_ID, ISDISPLAYED, REFERENCED_TAB_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Tab'),'Quick Info_1108','Quick Info',
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfo')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfo')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfo')),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfo'),
(select AD_Window_ID from AD_Window where Value = 'Quick Info_473'),
'',
'Quick Info Widget Header',
'8571',
'Definition of Quick Info Widget Header containing name, description, etc.',
'N',
(select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')),
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
where not exists (select 1 from AD_Tab where Value = 'Quick Info_1108'  and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'));

update AD_Tab set Updated = sysdate, UpdatedBy = 0, name = 'Quick Info', ad_columnsortorder_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfo')), ad_columnsortyesno_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfo')), ad_column_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfo')), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfo'), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Quick Info_473'), commitwarning = '', description = 'Quick Info Widget Header', entitytype = '8571', help = 'Definition of Quick Info Widget Header containing name, description, etc.', importfields = 'N', included_tab_id = (select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')), orderbyclause = '', seqno = 10, tablevel = 0, whereclause = '', isactive = 'Y', hastree = 'N', isinfotab = 'N', isreadonly = 'N', issinglerow = 'N', issorttab = 'N', istranslationtab = 'N', DISPLAYLOGIC = '', ISADVANCEDTAB = 'N', ISINSERTRECORD = 'Y', READONLYLOGIC = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ISDISPLAYED = 'Y', REFERENCED_TAB_ID = (select AD_Tab_ID from AD_Tab where Value = '') 
where Value = 'Quick Info_1108'  and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473');

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')), 'fr_FR', 'Y', '','Quick Info Widget Header','Definition of Quick Info Widget Header containing name, description, etc.','Quick Info'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')) and ad_language = 'fr_FR');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = 'Quick Info Widget Header',Help = 'Definition of Quick Info Widget Header containing name, description, etc.',Name = 'Quick Info' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')) and ad_language = 'fr_FR';

insert into AD_Tab (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,Value,name, ad_columnsortorder_id, ad_columnsortyesno_id, ad_column_id, ad_image_id, ad_process_id, ad_table_id, ad_window_id, commitwarning, description, entitytype, help, importfields, included_tab_id, orderbyclause, seqno, tablevel, whereclause, isactive, hastree, isinfotab, isreadonly, issinglerow, issorttab, istranslationtab, DISPLAYLOGIC, ISADVANCEDTAB, ISINSERTRECORD, READONLYLOGIC, AD_CTXAREA_ID, ISDISPLAYED, REFERENCED_TAB_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Tab'),'Quick Info Line_1109','Quick Info Line',
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine')),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'),
(select AD_Window_ID from AD_Window where Value = 'Quick Info_473'),
'',
'Quick Info Widget Line',
'8571',
'Definition of each item included under a Quick Info Widget including its SQL, DisplayType, etc.',
'N',
(select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')),
'',
20,
1,
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
where not exists (select 1 from AD_Tab where Value = 'Quick Info Line_1109'  and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'));

update AD_Tab set Updated = sysdate, UpdatedBy = 0, name = 'Quick Info Line', ad_columnsortorder_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine')), ad_columnsortyesno_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine')), ad_column_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine')), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_QuickInfoLine'), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Quick Info_473'), commitwarning = '', description = 'Quick Info Widget Line', entitytype = '8571', help = 'Definition of each item included under a Quick Info Widget including its SQL, DisplayType, etc.', importfields = 'N', included_tab_id = (select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')), orderbyclause = '', seqno = 20, tablevel = 1, whereclause = '', isactive = 'Y', hastree = 'N', isinfotab = 'N', isreadonly = 'N', issinglerow = 'N', issorttab = 'N', istranslationtab = 'N', DISPLAYLOGIC = '', ISADVANCEDTAB = 'N', ISINSERTRECORD = 'Y', READONLYLOGIC = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ISDISPLAYED = 'Y', REFERENCED_TAB_ID = (select AD_Tab_ID from AD_Tab where Value = '') 
where Value = 'Quick Info Line_1109'  and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473');

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')), 'fr_FR', 'Y', '','Quick Info Widget Line','Definition of each item included under a Quick Info Widget including its SQL, DisplayType, etc.','Quick Info Line'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')) and ad_language = 'fr_FR');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = 'Quick Info Widget Line',Help = 'Definition of each item included under a Quick Info Widget including its SQL, DisplayType, etc.',Name = 'Quick Info Line' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType_Trl')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Translation_230' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Document Type_135')),
'Document Type',
'Document type or rules',
14,
'',
'8571',
'The Document Type determines document sequence and processing rules',
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
30
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType_Trl'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Translation_230' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Translation_230' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Document Type_135')), name = 'Document Type', description = 'Document type or rules', displaylength = 14, displaylogic = '', entitytype = '8571', help = 'The Document Type determines document sequence and processing rules', obscuretype = '', seqno = 30, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 30 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType_Trl'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Translation_230' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType_Trl')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Translation_230' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))), 'fr_FR', 'Y', 'Type Document','D�termine la s�quence du document  et le mode de traitement.','Type document'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType_Trl')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Translation_230' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Type Document',Help = 'D�termine la s�quence du document  et le mode de traitement.',Name = 'Type document' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType_Trl')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Translation_230' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DisplayLogic' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')),
'Display Logic',
'If the Field is displayed, the result determines if the field is actually displayed',
2000,
'',
'8571',
'format := {expression} [{logic} {expression}]<br>  expression := @{context}@{operand}{value} or @{context}@{operand}{value}<br>  logic := {|}|{&'||'}<br> context := any global or window context <br> value := strings or numbers<br> logic operators := AND or OR with the previous result from left to right <br> operand := eq{=}, gt{&'||'gt;}, le{&'||'lt;}, not{~^!} <br> Examples: <br> @AD_Table_ID@=14 | @Language@!GERGER <br> @PriceLimit@>10 | @PriceList@>@PriceActual@<br> @Name@>J<br> Strings may be in single quotes (optional)',
'',
160,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DisplayLogic' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')), name = 'Display Logic', description = 'If the Field is displayed, the result determines if the field is actually displayed', displaylength = 2000, displaylogic = '', entitytype = '8571', help = 'format := {expression} [{logic} {expression}]<br>  expression := @{context}@{operand}{value} or @{context}@{operand}{value}<br>  logic := {|}|{&'||'}<br> context := any global or window context <br> value := strings or numbers<br> logic operators := AND or OR with the previous result from left to right <br> operand := eq{=}, gt{&'||'gt;}, le{&'||'lt;}, not{~^!} <br> Examples: <br> @AD_Table_ID@=14 | @Language@!GERGER <br> @PriceLimit@>10 | @PriceList@>@PriceActual@<br> @Name@>J<br> Strings may be in single quotes (optional)', obscuretype = '', seqno = 160, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DisplayLogic' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DisplayLogic' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))), 'fr_FR', 'Y', 'Si le champ est affich�, le r�sultat d�termine si le champ sur affich�.','format		:= <expression> [<logic> <expression>] expression	:= @<context>@=<value> or @<context>@!<value> logic		:= <|>|<&'||'>	context		:= any global or window context value		:= strings logic operators	:= AND or OR with the prevoius result from left to right Example	''@AD_Table_ID@=14 | @Language@!''GERGER'' As it is always a string comparison, the string delimiters are optional, but suggested for future compability','Logique d''affichage'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DisplayLogic' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Si le champ est affich�, le r�sultat d�termine si le champ sur affich�.',Help = 'format		:= <expression> [<logic> <expression>] expression	:= @<context>@=<value> or @<context>@!<value> logic		:= <|>|<&'||'>	context		:= any global or window context value		:= strings logic operators	:= AND or OR with the prevoius result from left to right Example	''@AD_Table_ID@=14 | @Language@!''GERGER'' As it is always a string comparison, the string delimiters are optional, but suggested for future compability',Name = 'Logique d''affichage' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DisplayLogic' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'SeqNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')),
'Sequence',
'Method of ordering elements; lowest number comes first',
22,
'',
'8571',
'The Sequence indicates the order of elements',
'',
35,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'SeqNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')), name = 'Sequence', description = 'Method of ordering elements; lowest number comes first', displaylength = 22, displaylogic = '', entitytype = '8571', help = 'The Sequence indicates the order of elements', obscuretype = '', seqno = 35, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'SeqNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SeqNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))), 'fr_FR', 'Y', 'M�thode de tri des donn�es. Le n� le plus petit est affich� en 1er','D�finit l''ordre des donn�es.','S�quence'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SeqNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'M�thode de tri des donn�es. Le n� le plus petit est affich� en 1er',Help = 'D�finit l''ordre des donn�es.',Name = 'S�quence' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SeqNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsDisplayed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')),
'Displayed',
'Determines, if this field is displayed',
0,
'',
'8571',
'If the field is displayed, the field Display Logic will determine at runtime, if it is actually displayed',
'',
170,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsDisplayed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')), name = 'Displayed', description = 'Determines, if this field is displayed', displaylength = 0, displaylogic = '', entitytype = '8571', help = 'If the field is displayed, the field Display Logic will determine at runtime, if it is actually displayed', obscuretype = '', seqno = 170, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsDisplayed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsDisplayed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))), 'fr_FR', 'Y', 'D�termine si le champ est affich�','Si le champ est affich�, la logique d''impression d�terminera au runtime si il affichera le champ','Affich�'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsDisplayed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'D�termine si le champ est affich�',Help = 'Si le champ est affich�, la logique d''impression d�terminera au runtime si il affichera le champ',Name = 'Affich�' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsDisplayed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Reference_Value_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')),
'Reference Key',
'Required to specify, if data type is Table or List',
10,
'@AD_Reference_ID@=17',
'8571',
'The Reference Value indicates where the reference values are stored.  It must be specified if the data type is Table or List.',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
100
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Reference_Value_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')), name = 'Reference Key', description = 'Required to specify, if data type is Table or List', displaylength = 10, displaylogic = '@AD_Reference_ID@=17', entitytype = '8571', help = 'The Reference Value indicates where the reference values are stored.  It must be specified if the data type is Table or List.', obscuretype = '', seqno = 100, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 100 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Reference_Value_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Reference_Value_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))), 'fr_FR', 'Y', 'A d�finir, si le type de donn�es est table ou liste','La valeur de r�f�rence identifie l''endroit o� sont stock� les valeurs de r�f�rences. Cela doit �tre sp�cifi� si le type de donn�es est Table ou liste. ','Valeur de r�f�rence'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Reference_Value_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'A d�finir, si le type de donn�es est table ou liste',Help = 'La valeur de r�f�rence identifie l''endroit o� sont stock� les valeurs de r�f�rences. Cela doit �tre sp�cifi� si le type de donn�es est Table ou liste. ',Name = 'Valeur de r�f�rence' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Reference_Value_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Element_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')),
'System Element',
'System Element enables the central maintenance of column description and help.',
10,
'@AD_Reference_ID@  =19',
'8571',
'The System Element allows for the central maintenance of help, descriptions and terminology for a database column.',
'',
110,
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
110
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Element_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')), name = 'System Element', description = 'System Element enables the central maintenance of column description and help.', displaylength = 10, displaylogic = '@AD_Reference_ID@  =19', entitytype = '8571', help = 'The System Element allows for the central maintenance of help, descriptions and terminology for a database column.', obscuretype = '', seqno = 110, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 110 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Element_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Element_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))), 'fr_FR', 'Y', 'Les �l�ments du syst�me permettent une maintenance centralis�e des descriptions des colonnes et des aides','Les �l�ments du syst�me permettent une maintenance centralis�e des description, des aides et de la terminologie au niveau des colonnes de la base de donn�es','El�ment'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Element_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Les �l�ments du syst�me permettent une maintenance centralis�e des descriptions des colonnes et des aides',Help = 'Les �l�ments du syst�me permettent une maintenance centralis�e des description, des aides et de la terminologie au niveau des colonnes de la base de donn�es',Name = 'El�ment' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Element_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_QuickInfo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Quick Info_1108' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')),
'Quick Info',
'Quick Info Widget',
10,
'',
'8571',
'Quick Info Widget',
'',
0,
0,
'Y',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
99999
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_QuickInfo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Quick Info_1108' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')), name = 'Quick Info', description = 'Quick Info Widget', displaylength = 10, displaylogic = '', entitytype = '8571', help = 'Quick Info Widget', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 99999 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_QuickInfo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_QuickInfo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))), 'fr_FR', 'Y', 'Quick Info Widget','Quick Info Widget','Quick Info'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_QuickInfo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Quick Info Widget',Help = 'Quick Info Widget',Name = 'Quick Info' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_QuickInfo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'EntityType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Quick Info_1108' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')),
'Entity Type',
'Dictionary Entity Type; Determines ownership and synchronization',
10,
'',
'8571',
'The Entity Types "Dictionary", "Compiere" and "Application" might be automatically synchronized and customizations deleted or overwritten.    For customizations, copy the entity and select "User"!',
'',
0,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'EntityType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Quick Info_1108' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')), name = 'Entity Type', description = 'Dictionary Entity Type; Determines ownership and synchronization', displaylength = 10, displaylogic = '', entitytype = '8571', help = 'The Entity Types "Dictionary", "Compiere" and "Application" might be automatically synchronized and customizations deleted or overwritten.    For customizations, copy the entity and select "User"!', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'EntityType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EntityType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))), 'fr_FR', 'Y', 'Type entit� dictionnaire. D�termine la propri�t� et la synchronisation','L''entit� de type dictionnaire, Compiere et application peuvent �tre automatiquement synchronis�e et les customisations supprim�es ou r�import�es. Pour les customisations, copier l''entit� et s�lectionner le type ''User''','Type entit�'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EntityType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Type entit� dictionnaire. D�termine la propri�t� et la synchronisation',Help = 'L''entit� de type dictionnaire, Compiere et application peuvent �tre automatiquement synchronis�e et les customisations supprim�es ou r�import�es. Pour les customisations, copier l''entit� et s�lectionner le type ''User''',Name = 'Type entit�' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EntityType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'EntityType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')),
'Entity Type',
'Dictionary Entity Type; Determines ownership and synchronization',
10,
'',
'8571',
'The Entity Types "Dictionary", "Compiere" and "Application" might be automatically synchronized and customizations deleted or overwritten.    For customizations, copy the entity and select "User"!',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
70
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'EntityType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')), name = 'Entity Type', description = 'Dictionary Entity Type; Determines ownership and synchronization', displaylength = 10, displaylogic = '', entitytype = '8571', help = 'The Entity Types "Dictionary", "Compiere" and "Application" might be automatically synchronized and customizations deleted or overwritten.    For customizations, copy the entity and select "User"!', obscuretype = '', seqno = 70, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 70 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'EntityType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EntityType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))), 'fr_FR', 'Y', 'Type entit� dictionnaire. D�termine la propri�t� et la synchronisation','L''entit� de type dictionnaire, Compiere et application peuvent �tre automatiquement synchronis�e et les customisations supprim�es ou r�import�es. Pour les customisations, copier l''entit� et s�lectionner le type ''User''','Type entit�'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EntityType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Type entit� dictionnaire. D�termine la propri�t� et la synchronisation',Help = 'L''entit� de type dictionnaire, Compiere et application peuvent �tre automatiquement synchronis�e et les customisations supprim�es ou r�import�es. Pour les customisations, copier l''entit� et s�lectionner le type ''User''',Name = 'Type entit�' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EntityType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'OtherClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')),
'Other SQL Clause',
'Other SQL Clause',
2000,
'',
'8571',
'Any other complete clause like GROUP BY, HAVING, ORDER BY, etc. after the WHERE clause.',
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
'',
'N',
140
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'OtherClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')), name = 'Other SQL Clause', description = 'Other SQL Clause', displaylength = 2000, displaylogic = '', entitytype = '8571', help = 'Any other complete clause like GROUP BY, HAVING, ORDER BY, etc. after the WHERE clause.', obscuretype = '', seqno = 140, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 140 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'OtherClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'OtherClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))), 'fr_FR', 'Y', 'Autre clause SQL','Tout type de clause comme  GROUP BY, HAVING, ORDER BY, etc. qui vient apr�s la clause WHERE.','Autre clause'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'OtherClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Autre clause SQL',Help = 'Tout type de clause comme  GROUP BY, HAVING, ORDER BY, etc. qui vient apr�s la clause WHERE.',Name = 'Autre clause' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'OtherClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'FromClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')),
'SQL FROM',
'SQL FROM clause',
2000,
'',
'8571',
'The From Clause indicates the SQL FROM clause to use for selecting the record for a measure calculation. It can have JOIN clauses. Do not include the FROM itself.',
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
'',
'N',
120
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'FromClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')), name = 'SQL FROM', description = 'SQL FROM clause', displaylength = 2000, displaylogic = '', entitytype = '8571', help = 'The From Clause indicates the SQL FROM clause to use for selecting the record for a measure calculation. It can have JOIN clauses. Do not include the FROM itself.', obscuretype = '', seqno = 120, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 120 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'FromClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'FromClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))), 'fr_FR', 'Y', 'Clause SQL From','','Clause From'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'FromClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Clause SQL From',Help = '',Name = 'Clause From' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'FromClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'SelectClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')),
'Sql SELECT',
'SQL SELECT clause',
1000,
'',
'8571',
'The Select Clause indicates the SQL SELECT clause to use for selecting the record for a measure calculation. Do not include the SELECT itself.',
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
80
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'SelectClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')), name = 'Sql SELECT', description = 'SQL SELECT clause', displaylength = 1000, displaylogic = '', entitytype = '8571', help = 'The Select Clause indicates the SQL SELECT clause to use for selecting the record for a measure calculation. Do not include the SELECT itself.', obscuretype = '', seqno = 80, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 80 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'SelectClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SelectClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))), 'fr_FR', 'Y', 'Clause SQL Select','La clause Select indique la clause SQL � utiliser pour d�terminer l''article dans la mesure de performance','Clause Select'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SelectClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Clause SQL Select',Help = 'La clause Select indique la clause SQL � utiliser pour d�terminer l''article dans la mesure de performance',Name = 'Clause Select' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SelectClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'WhereClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')),
'Sql WHERE',
'Fully qualified SQL WHERE clause',
2000,
'',
'8571',
'The Where Clause indicates the SQL WHERE clause to use for record selection. The WHERE clause entered is added to the query. Fully qualified means "tablename.columnname".',
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
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
130
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'WhereClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')), name = 'Sql WHERE', description = 'Fully qualified SQL WHERE clause', displaylength = 2000, displaylogic = '', entitytype = '8571', help = 'The Where Clause indicates the SQL WHERE clause to use for record selection. The WHERE clause entered is added to the query. Fully qualified means "tablename.columnname".', obscuretype = '', seqno = 130, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 130 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'WhereClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'WhereClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))), 'fr_FR', 'Y', 'Clause SQL WHERE compl�te','Identifie la partie de la clause SQL correspondant � WHERE � utiliser pour la s�lection d''enregistrement','Clause SQL '
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'WhereClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Clause SQL WHERE compl�te',Help = 'Identifie la partie de la clause SQL correspondant � WHERE � utiliser pour la s�lection d''enregistrement',Name = 'Clause SQL ' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'WhereClause' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Quick Info_1108' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')),
'Active',
'The record is active in the system',
1,
'',
'8571',
'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',
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
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
50
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Quick Info_1108' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')), name = 'Active', description = 'The record is active in the system', displaylength = 1, displaylogic = '', entitytype = '8571', help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', obscuretype = '', seqno = 50, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 50 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))), 'fr_FR', 'Y', 'L''enregistrement est actif dans le syst�me','Il a deux m�thodes pour rendre inactif un enregistrement dans le syst�me: la premi�re est de d�sactiver l''enregistrement, l''autre est de d�sactiver l''enregistrement. La d�sactivation rend l''enregistrement non valide au niveau des s�lections mais bien au niveau des �ditions. Il y a deux raisons pour d�sactiver plut�t que supprimer un enregistrement: la premi�re est pour des raisons d''audit. La seconde est que les donn�es sont li�es. Par exemple, vous ne pouvez pas supprimer un tiers si il existe des factures pour ce dernier. En d�sactivant le tiers, vous ne pouvez plus enregistrer de facture pour celui-ci.','Actif'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'L''enregistrement est actif dans le syst�me',Help = 'Il a deux m�thodes pour rendre inactif un enregistrement dans le syst�me: la premi�re est de d�sactiver l''enregistrement, l''autre est de d�sactiver l''enregistrement. La d�sactivation rend l''enregistrement non valide au niveau des s�lections mais bien au niveau des �ditions. Il y a deux raisons pour d�sactiver plut�t que supprimer un enregistrement: la premi�re est pour des raisons d''audit. La seconde est que les donn�es sont li�es. Par exemple, vous ne pouvez pas supprimer un tiers si il existe des factures pour ce dernier. En d�sactivant le tiers, vous ne pouvez plus enregistrer de facture pour celui-ci.',Name = 'Actif' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Quick Info_1108' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')),
'Name',
'Alphanumeric identifier of the entity',
60,
'',
'8571',
'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.',
'',
30,
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
30
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Quick Info_1108' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')), name = 'Name', description = 'Alphanumeric identifier of the entity', displaylength = 60, displaylogic = '', entitytype = '8571', help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.', obscuretype = '', seqno = 30, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 30 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))), 'fr_FR', 'Y', 'Identification alphanum�rique de l''entit�','Le nom de l''entit� (enregistrement) est utilis� comme cl� de recherche par d�faut en compl�ment de la cl� de recherche. La longueur maximale permise est de 60 caract�res.','Nom'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identification alphanum�rique de l''entit�',Help = 'Le nom de l''entit� (enregistrement) est utilis� comme cl� de recherche par d�faut en compl�ment de la cl� de recherche. La longueur maximale permise est de 60 caract�res.',Name = 'Nom' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Quick Info_1108' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')),
'Organization',
'Organizational entity within Tenant',
10,
'',
'8571',
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
'N',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
20
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Quick Info_1108' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')), name = 'Organization', description = 'Organizational entity within Tenant', displaylength = 10, displaylogic = '', entitytype = '8571', help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', obscuretype = '', seqno = 20, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 20 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))), 'fr_FR', 'Y', 'Etablissement au sein d''une soci�t�','une unit� est une partie d''une soci�t�, (�tablissement, succursale, bureau, etc...).','Organisation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Etablissement au sein d''une soci�t�',Help = 'une unit� est une partie d''une soci�t�, (�tablissement, succursale, bureau, etc...).',Name = 'Organisation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Quick Info_1108' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')),
'Tenant',
'Identifies the Client/Tenant for this installation.',
10,
'',
'8571',
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
'N',
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
10
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Quick Info_1108' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')), name = 'Tenant', description = 'Identifies the Client/Tenant for this installation.', displaylength = 10, displaylogic = '', entitytype = '8571', help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', obscuretype = '', seqno = 10, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 10 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))), 'fr_FR', 'Y', 'Nom de l''entreprise titulaire de la base de donn�es (DB)','','Soci�t�'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Nom de l''entreprise titulaire de la base de donn�es (DB)',Help = '',Name = 'Soci�t�' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Quick Info_1108' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')),
'Description',
'Optional short description of the record',
255,
'',
'8571',
'A description is limited to 255 characters.',
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
'',
'N',
40
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Quick Info_1108' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')), name = 'Description', description = 'Optional short description of the record', displaylength = 255, displaylogic = '', entitytype = '8571', help = 'A description is limited to 255 characters.', obscuretype = '', seqno = 40, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 40 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))), 'fr_FR', 'Y', 'Description courte et optionnelle de l''enregistrement','Description limit�e � 255 caract�res.','Description'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Description courte et optionnelle de l''enregistrement',Help = 'Description limit�e � 255 caract�res.',Name = 'Description' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info_1108' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_QuickInfoLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')),
'Quick Info Line',
'',
10,
'',
'8571',
'',
'',
0,
0,
'Y',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
99999
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_QuickInfoLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')), name = 'Quick Info Line', description = '', displaylength = 10, displaylogic = '', entitytype = '8571', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 99999 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_QuickInfoLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_QuickInfoLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))), 'fr_FR', 'Y', '','','Quick Info Line'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_QuickInfoLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Quick Info Line' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_QuickInfoLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_QuickInfo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')),
'Quick Info',
'Quick Info Widget',
10,
'',
'8571',
'Quick Info Widget',
'',
30,
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
30
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_QuickInfo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')), name = 'Quick Info', description = 'Quick Info Widget', displaylength = 10, displaylogic = '', entitytype = '8571', help = 'Quick Info Widget', obscuretype = '', seqno = 30, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 30 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_QuickInfo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_QuickInfo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))), 'fr_FR', 'Y', 'Quick Info Widget','Quick Info Widget','Quick Info'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_QuickInfo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Quick Info Widget',Help = 'Quick Info Widget',Name = 'Quick Info' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_QuickInfo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')),
'Active',
'The record is active in the system',
1,
'',
'8571',
'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',
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
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
60
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')), name = 'Active', description = 'The record is active in the system', displaylength = 1, displaylogic = '', entitytype = '8571', help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', obscuretype = '', seqno = 60, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 60 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))), 'fr_FR', 'Y', 'L''enregistrement est actif dans le syst�me','Il a deux m�thodes pour rendre inactif un enregistrement dans le syst�me: la premi�re est de d�sactiver l''enregistrement, l''autre est de d�sactiver l''enregistrement. La d�sactivation rend l''enregistrement non valide au niveau des s�lections mais bien au niveau des �ditions. Il y a deux raisons pour d�sactiver plut�t que supprimer un enregistrement: la premi�re est pour des raisons d''audit. La seconde est que les donn�es sont li�es. Par exemple, vous ne pouvez pas supprimer un tiers si il existe des factures pour ce dernier. En d�sactivant le tiers, vous ne pouvez plus enregistrer de facture pour celui-ci.','Actif'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'L''enregistrement est actif dans le syst�me',Help = 'Il a deux m�thodes pour rendre inactif un enregistrement dans le syst�me: la premi�re est de d�sactiver l''enregistrement, l''autre est de d�sactiver l''enregistrement. La d�sactivation rend l''enregistrement non valide au niveau des s�lections mais bien au niveau des �ditions. Il y a deux raisons pour d�sactiver plut�t que supprimer un enregistrement: la premi�re est pour des raisons d''audit. La seconde est que les donn�es sont li�es. Par exemple, vous ne pouvez pas supprimer un tiers si il existe des factures pour ce dernier. En d�sactivant le tiers, vous ne pouvez plus enregistrer de facture pour celui-ci.',Name = 'Actif' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')),
'Description',
'Optional short description of the record',
255,
'',
'8571',
'A description is limited to 255 characters.',
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
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
50
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')), name = 'Description', description = 'Optional short description of the record', displaylength = 255, displaylogic = '', entitytype = '8571', help = 'A description is limited to 255 characters.', obscuretype = '', seqno = 50, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 50 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))), 'fr_FR', 'Y', 'Description courte et optionnelle de l''enregistrement','Description limit�e � 255 caract�res.','Description'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Description courte et optionnelle de l''enregistrement',Help = 'Description limit�e � 255 caract�res.',Name = 'Description' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')),
'Name',
'Alphanumeric identifier of the entity',
60,
'',
'8571',
'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.',
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
'',
'N',
40
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')), name = 'Name', description = 'Alphanumeric identifier of the entity', displaylength = 60, displaylogic = '', entitytype = '8571', help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.', obscuretype = '', seqno = 40, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 40 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))), 'fr_FR', 'Y', 'Identification alphanum�rique de l''entit�','Le nom de l''entit� (enregistrement) est utilis� comme cl� de recherche par d�faut en compl�ment de la cl� de recherche. La longueur maximale permise est de 60 caract�res.','Nom'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identification alphanum�rique de l''entit�',Help = 'Le nom de l''entit� (enregistrement) est utilis� comme cl� de recherche par d�faut en compl�ment de la cl� de recherche. La longueur maximale permise est de 60 caract�res.',Name = 'Nom' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')),
'Organization',
'Organizational entity within Tenant',
10,
'',
'8571',
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
20
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')), name = 'Organization', description = 'Organizational entity within Tenant', displaylength = 10, displaylogic = '', entitytype = '8571', help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', obscuretype = '', seqno = 20, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 20 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))), 'fr_FR', 'Y', 'Etablissement au sein d''une soci�t�','une unit� est une partie d''une soci�t�, (�tablissement, succursale, bureau, etc...).','Organisation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Etablissement au sein d''une soci�t�',Help = 'une unit� est une partie d''une soci�t�, (�tablissement, succursale, bureau, etc...).',Name = 'Organisation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Reference_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')),
'Reference',
'System Reference and Validation',
10,
'',
'8571',
'The Reference could be a display type, list or table validation.',
'',
90,
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
90
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Reference_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')), name = 'Reference', description = 'System Reference and Validation', displaylength = 10, displaylogic = '', entitytype = '8571', help = 'The Reference could be a display type, list or table validation.', obscuretype = '', seqno = 90, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 90 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Reference_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Reference_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))), 'fr_FR', 'Y', 'R�f�rence syst�me','La r�f�rence indique le type de champ r�f�rence','R�f�rence'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Reference_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'R�f�rence syst�me',Help = 'La r�f�rence indique le type de champ r�f�rence',Name = 'R�f�rence' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Reference_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Tab_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')),
'Tab',
'Tab within a Window',
10,
'@AD_Reference_ID@  =19',
'8571',
'The Tab indicates a tab that displays within a window.',
'',
0,
0,
'Y',
'Y',
'N',
'N',
'N',
'N',
'N',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
99999
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Tab_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')), name = 'Tab', description = 'Tab within a Window', displaylength = 10, displaylogic = '@AD_Reference_ID@  =19', entitytype = '8571', help = 'The Tab indicates a tab that displays within a window.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 99999 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Tab_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Tab_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))), 'fr_FR', 'Y', 'Onglet d''une fen�tre ','L''onglet repr�sente celui qui s''affiche pour chaque fen�tre du syst�me','Onglet'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Tab_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Onglet d''une fen�tre ',Help = 'L''onglet repr�sente celui qui s''affiche pour chaque fen�tre du syst�me',Name = 'Onglet' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Tab_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')),
'Tenant',
'Identifies the Client/Tenant for this installation.',
10,
'',
'8571',
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
10
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')), name = 'Tenant', description = 'Identifies the Client/Tenant for this installation.', displaylength = 10, displaylogic = '', entitytype = '8571', help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', obscuretype = '', seqno = 10, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 10 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))), 'fr_FR', 'Y', 'Nom de l''entreprise titulaire de la base de donn�es (DB)','','Soci�t�'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Nom de l''entreprise titulaire de la base de donn�es (DB)',Help = '',Name = 'Soci�t�' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Window_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')),
'Window',
'Data entry or display window',
10,
'@AD_Reference_ID@  =19 | @AD_Reference_ID@  =40',
'8571',
'The Window field identifies a unique Window in the system.',
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
'',
'N',
150
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Window_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Quick Info Line_1109' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Quick Info_473')), name = 'Window', description = 'Data entry or display window', displaylength = 10, displaylogic = '@AD_Reference_ID@  =19 | @AD_Reference_ID@  =40', entitytype = '8571', help = 'The Window field identifies a unique Window in the system.', obscuretype = '', seqno = 150, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 150 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Window_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Window_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))), 'fr_FR', 'Y', 'Fen�tre de saisie des donn�es','La fen�tre identifie une fen�tre unique dans le syst�me','Fen�tre'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Window_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Fen�tre de saisie des donn�es',Help = 'La fen�tre identifie une fen�tre unique dans le syst�me',Name = 'Fen�tre' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Window_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_QuickInfoLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Quick Info Line_1109' and ad_window_id in (select ad_window_id from ad_window where value = 'Quick Info_473'))) and ad_language = 'fr_FR';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'Quick Info_1877','Quick Info',
'W',
'Quick Info Widget',
'8571',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = 'Quick Info_473'),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'Quick Info_1877' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Quick Info', action = 'W', description = 'Quick Info Widget', entitytype = '8571', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Quick Info_473'), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'Quick Info_1877' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Quick Info_1877'), 'fr_FR', 'Y', 'Quick Info Widget','Quick Info'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Quick Info_1877') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Quick Info Widget',Name = 'Quick Info' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Quick Info_1877') and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '118571 - Quick Info : Reprendre de la version 380 les quick ', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '380', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '8571' ;

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '4', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = 'Definition of the Quick Info Widget to be attached to a Tab', entitytype = '8571', help = 'Contains definition of Quick Info Widget, including name, description, etc.', importtable = 'N', loadseq = 0, name = 'Quick Info', replicationtype = 'L', isactive = 'Y', isdeleteable = 'Y', ishighvolume = 'N', issecurityenabled = 'N', isview = 'N', ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Quick Info_473'), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'AD_QuickInfo' ;

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '4', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = 'Definition of the Quick Info Widget items included', entitytype = '8571', help = 'Contains definition of Quick Info Widget items included under one widget.', importtable = 'N', loadseq = 0, name = 'Quick Info Line', replicationtype = 'L', isactive = 'Y', isdeleteable = 'Y', ishighvolume = 'N', issecurityenabled = 'N', isview = 'N', ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Quick Info_473'), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'AD_QuickInfoLine' ;

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'Quick Info_1877') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'Quick Info_1877')); 

