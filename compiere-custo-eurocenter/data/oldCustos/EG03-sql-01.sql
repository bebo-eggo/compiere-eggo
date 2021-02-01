insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EG03','EG03 - Types Ech�ances',
'',
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
where not exists (select 1 from AD_EntityType where EntityType = 'EG03' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EG03 - Types Ech�ances', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EG03' ;

insert into AD_Window (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,Value,name, ad_color_id, ad_image_id, description, entitytype, help, windowtype, winheight, winwidth, isactive, isbetafunctionality, isdefault ,ad_ctxarea_id, iscustomdefault) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Window'),'TypesEcheances','TypesEcheances',
(select AD_Color_ID from AD_Color where Name = ''),
(select AD_Image_ID from AD_Image where Name = ''),
'',
'EG03',
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
where not exists (select 1 from AD_Window where Value = 'TypesEcheances' );

update AD_Window set Updated = sysdate, UpdatedBy = 0, name = 'TypesEcheances', ad_color_id = (select AD_Color_ID from AD_Color where Name = ''), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), description = '', entitytype = 'EG03', help = '', windowtype = 'M', winheight = 0, winwidth = 0, isactive = 'Y', isbetafunctionality = 'N', isdefault = 'N', ad_ctxarea_id = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), iscustomdefault = 'N' 
where Value = 'TypesEcheances' ;

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='TypesEcheances'), 'nl_BE', 'Y', '','','TypesEcheances'
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='TypesEcheances') and ad_language = 'nl_BE');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'TypesEcheances' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='TypesEcheances') and ad_language = 'nl_BE';

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='TypesEcheances'), 'fr_FR', 'Y', '','','Types d''�ch�ance'
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='TypesEcheances') and ad_language = 'fr_FR');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Types d''�ch�ance' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='TypesEcheances') and ad_language = 'fr_FR';

insert into AD_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,TableName,accesslevel, ad_val_rule_id, description, entitytype, help, importtable, loadseq, name, replicationtype, isactive, isdeleteable, ishighvolume, issecurityenabled, isview, ad_window_id, po_window_id, referenced_table_id) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Table'),'Z_TypeEcheance','3',
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Z_TypeEcheance',
'EG03',
'',
'N',
140,
'Z_TypeEcheance',
'L',
'Y',
'Y',
'Y',
'N',
'N',
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Table_ID from AD_Table where TableName = '')
 from dual  
where not exists (select 1 from AD_Table where TableName = 'Z_TypeEcheance' );

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = 'Z_TypeEcheance', entitytype = 'EG03', help = '', importtable = 'N', loadseq = 140, name = 'Z_TypeEcheance', replicationtype = 'L', isactive = 'Y', isdeleteable = 'Y', ishighvolume = 'Y', issecurityenabled = 'N', isview = 'N', ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'Z_TypeEcheance' ;

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='Z_TypeEcheance'), 'nl_BE', 'Y', 'Z_TypeEcheance'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='Z_TypeEcheance') and ad_language = 'nl_BE');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Z_TypeEcheance' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='Z_TypeEcheance') and ad_language = 'nl_BE';

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='Z_TypeEcheance'), 'fr_FR', 'Y', 'Z_TypeEcheance'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='Z_TypeEcheance') and ad_language = 'fr_FR');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Z_TypeEcheance' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='Z_TypeEcheance') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Z_TypeEcheance_ID','Z_TypeEcheance',
'EG03',
'',
'Z_TypeEcheance',
'',
'',
'',
'',
'Z_TypeEcheance',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Z_TypeEcheance_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = 'Z_TypeEcheance', entitytype = 'EG03', help = '', name = 'Z_TypeEcheance', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Z_TypeEcheance', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Z_TypeEcheance_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_TypeEcheance_ID'), 'nl_BE', 'Y', 'Z_TypeEcheance','','Z_TypeEcheance','','','','','Z_TypeEcheance'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_TypeEcheance_ID') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Z_TypeEcheance',Help = '',Name = 'Z_TypeEcheance',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Z_TypeEcheance' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_TypeEcheance_ID') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_TypeEcheance_ID'), 'fr_FR', 'Y', 'Z_TypeEcheance','','Z_TypeEcheance','','','','','Z_TypeEcheance'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_TypeEcheance_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Z_TypeEcheance',Help = '',Name = 'Z_TypeEcheance',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Z_TypeEcheance' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_TypeEcheance_ID') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsFinancement','',
'EG03',
'',
'IsFinancement',
'',
'',
'',
'',
'IsFinancement',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsFinancement' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG03', help = '', name = 'IsFinancement', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'IsFinancement', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsFinancement' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsFinancement'), 'nl_BE', 'Y', '','','IsFinancement','','','','','IsFinancement'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsFinancement') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsFinancement',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'IsFinancement' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsFinancement') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsFinancement'), 'fr_FR', 'Y', '','','IsFinancement','','','','','IsFinancement'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsFinancement') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsFinancement',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'IsFinancement' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsFinancement') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsLivraison','',
'EG03',
'',
'IsLivraison',
'',
'',
'',
'',
'IsLivraison',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsLivraison' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG03', help = '', name = 'IsLivraison', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'IsLivraison', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsLivraison' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsLivraison'), 'nl_BE', 'Y', '','','IsLivraison','','','','','IsLivraison'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsLivraison') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsLivraison',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'IsLivraison' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsLivraison') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsLivraison'), 'fr_FR', 'Y', '','','IsLivraison','','','','','IsLivraison'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsLivraison') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsLivraison',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'IsLivraison' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsLivraison') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'),
'',
'@#AD_Client_ID@',
'Identifies the Client/Tenant for this installation.',
'EG03',
22,
'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',
'Tenant',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'), callout = '', defaultvalue = '@#AD_Client_ID@', description = 'Identifies the Client/Tenant for this installation.', entitytype = 'EG03', fieldlength = 22, help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', name = 'Tenant', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')), 'nl_BE', 'Y', 'Tenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')), 'fr_FR', 'Y', 'Tenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Org_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'),
'',
'@#AD_Org_ID@',
'Organizational entity within Tenant',
'EG03',
22,
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
'Organization',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'), callout = '', defaultvalue = '@#AD_Org_ID@', description = 'Organizational entity within Tenant', entitytype = 'EG03', fieldlength = 22, help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', name = 'Organization', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')), 'nl_BE', 'Y', 'Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')), 'fr_FR', 'Y', 'Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Created',(select AD_Element_ID from AD_Element where ColumnName = 'Created'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was created',
'EG03',
7,
'The Created On field indicates the date that this record was created.',
'Created On',
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
where not exists (select 1 from AD_Column where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Created'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was created', entitytype = 'EG03', fieldlength = 7, help = 'The Created On field indicates the date that this record was created.', name = 'Created On', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')), 'nl_BE', 'Y', 'Created On'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created On' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')), 'fr_FR', 'Y', 'Created On'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created On' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'CreatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who created this record',
'EG03',
22,
'The Created By field indicates the user who created this record.',
'Created By',
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
where not exists (select 1 from AD_Column where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who created this record', entitytype = 'EG03', fieldlength = 22, help = 'The Created By field indicates the user who created this record.', name = 'Created By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')), 'nl_BE', 'Y', 'Created By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')), 'fr_FR', 'Y', 'Created By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_TypeEcheance_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Z_TypeEcheance_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'ID'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Z_TypeEcheance',
'EG03',
10,
'',
'Z_TypeEcheance',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_TypeEcheance_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_TypeEcheance_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'ID'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Z_TypeEcheance', entitytype = 'EG03', fieldlength = 10, help = '', name = 'Z_TypeEcheance', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'Y', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_TypeEcheance_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_TypeEcheance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')), 'nl_BE', 'Y', 'Z_TypeEcheance'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_TypeEcheance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Z_TypeEcheance' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_TypeEcheance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_TypeEcheance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')), 'fr_FR', 'Y', 'Z_TypeEcheance'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_TypeEcheance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Z_TypeEcheance' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_TypeEcheance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsActive',(select AD_Element_ID from AD_Element where ColumnName = 'IsActive'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'Y',
'The record is active in the system',
'EG03',
1,
'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',
'Active',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsActive'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'Y', description = 'The record is active in the system', entitytype = 'EG03', fieldlength = 1, help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', name = 'Active', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')), 'nl_BE', 'Y', 'Active'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Active' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')), 'fr_FR', 'Y', 'Active'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Active' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Updated',(select AD_Element_ID from AD_Element where ColumnName = 'Updated'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was updated',
'EG03',
7,
'The Updated field indicates the date that this record was updated.',
'Updated',
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
where not exists (select 1 from AD_Column where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Updated'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was updated', entitytype = 'EG03', fieldlength = 7, help = 'The Updated field indicates the date that this record was updated.', name = 'Updated', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')), 'nl_BE', 'Y', 'Updated'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')), 'fr_FR', 'Y', 'Updated'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'UpdatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who updated this records',
'EG03',
22,
'The Updated By field indicates the user who updated this record.',
'Updated By',
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
where not exists (select 1 from AD_Column where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who updated this records', entitytype = 'EG03', fieldlength = 22, help = 'The Updated By field indicates the user who updated this record.', name = 'Updated By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')), 'nl_BE', 'Y', 'Updated By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')), 'fr_FR', 'Y', 'Updated By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Value',(select AD_Element_ID from AD_Element where ColumnName = 'Value'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Search key for the record in the format required - must be unique',
'EG03',
22,
'A search key allows you a fast method of finding a particular record. If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',
'Search Key',
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
where not exists (select 1 from AD_Column where ColumnName = 'Value'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Value'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Search key for the record in the format required - must be unique', entitytype = 'EG03', fieldlength = 22, help = 'A search key allows you a fast method of finding a particular record. If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', name = 'Search Key', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'Y', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Value'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')), 'nl_BE', 'Y', 'Search Key'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Search Key' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')), 'fr_FR', 'Y', 'Search Key'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Search Key' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsLivraison',(select AD_Element_ID from AD_Element where ColumnName = 'IsLivraison'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'EG03',
1,
'',
'IsLivraison',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsLivraison'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsLivraison'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'EG03', fieldlength = 1, help = '', name = 'IsLivraison', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsLivraison'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsLivraison' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')), 'nl_BE', 'Y', 'IsLivraison'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsLivraison' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IsLivraison' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsLivraison' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsLivraison' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')), 'fr_FR', 'Y', 'IsLivraison'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsLivraison' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IsLivraison' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsLivraison' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Name',(select AD_Element_ID from AD_Element where ColumnName = 'Name'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Alphanumeric identifier of the entity',
'EG03',
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
where not exists (select 1 from AD_Column where ColumnName = 'Name'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Name'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Alphanumeric identifier of the entity', entitytype = 'EG03', fieldlength = 60, help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.', name = 'Name', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'Y', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Name'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')), 'nl_BE', 'Y', 'Name'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Name' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')), 'fr_FR', 'Y', 'Name'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Name' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsFinancement',(select AD_Element_ID from AD_Element where ColumnName = 'IsFinancement'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'EG03',
1,
'',
'IsFinancement',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsFinancement'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsFinancement'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'EG03', fieldlength = 1, help = '', name = 'IsFinancement', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsFinancement'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')), 'nl_BE', 'Y', 'IsFinancement'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IsFinancement' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')), 'fr_FR', 'Y', 'IsFinancement'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IsFinancement' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'fr_FR';

insert into AD_Tab (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,Value,name, ad_columnsortorder_id, ad_columnsortyesno_id, ad_column_id, ad_image_id, ad_process_id, ad_table_id, ad_window_id, commitwarning, description, entitytype, help, importfields, included_tab_id, orderbyclause, seqno, tablevel, whereclause, isactive, hastree, isinfotab, isreadonly, issinglerow, issorttab, istranslationtab, DISPLAYLOGIC, ISADVANCEDTAB, ISINSERTRECORD, READONLYLOGIC, AD_CTXAREA_ID, ISDISPLAYED, REFERENCED_TAB_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Tab'),'Types Echeances','Types Echeances',
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance')),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'),
(select AD_Window_ID from AD_Window where Value = 'TypesEcheances'),
'',
'',
'EG03',
'',
'N',
(select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'TypesEcheances')),
'',
10,
0,
'',
'Y',
'N',
'N',
'N',
'Y',
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
where not exists (select 1 from AD_Tab where Value = 'Types Echeances'  and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'));

update AD_Tab set Updated = sysdate, UpdatedBy = 0, name = 'Types Echeances', ad_columnsortorder_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance')), ad_columnsortyesno_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance')), ad_column_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance')), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'TypesEcheances'), commitwarning = '', description = '', entitytype = 'EG03', help = '', importfields = 'N', included_tab_id = (select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'TypesEcheances')), orderbyclause = '', seqno = 10, tablevel = 0, whereclause = '', isactive = 'Y', hastree = 'N', isinfotab = 'N', isreadonly = 'N', issinglerow = 'Y', issorttab = 'N', istranslationtab = 'N', DISPLAYLOGIC = '', ISADVANCEDTAB = 'N', ISINSERTRECORD = 'Y', READONLYLOGIC = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ISDISPLAYED = 'Y', REFERENCED_TAB_ID = (select AD_Tab_ID from AD_Tab where Value = '') 
where Value = 'Types Echeances'  and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances');

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances')), 'nl_BE', 'Y', '','','','Types Echeances'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances')) and ad_language = 'nl_BE');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'Types Echeances' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances')) and ad_language = 'nl_BE';

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances')), 'fr_FR', 'Y', '','','','Types Ech�ances'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances')) and ad_language = 'fr_FR');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'Types Ech�ances' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Types Echeances' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'TypesEcheances')),
'Active',
'The record is active in the system',
1,
'',
'EG03',
'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Types Echeances' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'TypesEcheances')), name = 'Active', description = 'The record is active in the system', displaylength = 1, displaylogic = '', entitytype = 'EG03', help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', obscuretype = '', seqno = 30, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))), 'nl_BE', 'Y', 'The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The record is active in the system',Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Name = 'Active' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))), 'fr_FR', 'Y', 'The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The record is active in the system',Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Name = 'Active' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Types Echeances' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'TypesEcheances')),
'IsFinancement',
'',
1,
'',
'EG03',
'',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Types Echeances' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'TypesEcheances')), name = 'IsFinancement', description = '', displaylength = 1, displaylogic = '', entitytype = 'EG03', help = '', obscuretype = '', seqno = 60, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))), 'nl_BE', 'Y', '','','IsFinancement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsFinancement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))), 'fr_FR', 'Y', '','','Financement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Financement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsLivraison' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Types Echeances' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'TypesEcheances')),
'IsLivraison',
'',
1,
'',
'EG03',
'',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsLivraison' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Types Echeances' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'TypesEcheances')), name = 'IsLivraison', description = '', displaylength = 1, displaylogic = '', entitytype = 'EG03', help = '', obscuretype = '', seqno = 70, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsLivraison' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsLivraison' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))), 'nl_BE', 'Y', '','','IsLivraison'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsLivraison' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsLivraison' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsLivraison' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsLivraison' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))), 'fr_FR', 'Y', '','','Livraison'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsLivraison' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Livraison' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsLivraison' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Types Echeances' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'TypesEcheances')),
'Name',
'Alphanumeric identifier of the entity',
60,
'',
'EG03',
'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Types Echeances' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'TypesEcheances')), name = 'Name', description = 'Alphanumeric identifier of the entity', displaylength = 60, displaylogic = '', entitytype = 'EG03', help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.', obscuretype = '', seqno = 50, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))), 'nl_BE', 'Y', 'Alphanumeric identifier of the entity','The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.','Name'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Alphanumeric identifier of the entity',Help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.',Name = 'Name' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))), 'fr_FR', 'Y', 'Alphanumeric identifier of the entity','The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.','Nom'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Alphanumeric identifier of the entity',Help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.',Name = 'Nom' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Types Echeances' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'TypesEcheances')),
'Organization',
'Organizational entity within Tenant',
22,
'',
'EG03',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Types Echeances' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'TypesEcheances')), name = 'Organization', description = 'Organizational entity within Tenant', displaylength = 22, displaylogic = '', entitytype = 'EG03', help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', obscuretype = '', seqno = 20, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))), 'nl_BE', 'Y', 'Organizational entity within Tenant','An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organisation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organizational entity within Tenant',Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Name = 'Organisation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))), 'fr_FR', 'Y', 'Organizational entity within Tenant','An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organisation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organizational entity within Tenant',Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Name = 'Organisation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Types Echeances' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'TypesEcheances')),
'Search Key',
'Search key for the record in the format required - must be unique',
22,
'',
'EG03',
'A search key allows you a fast method of finding a particular record. If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Types Echeances' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'TypesEcheances')), name = 'Search Key', description = 'Search key for the record in the format required - must be unique', displaylength = 22, displaylogic = '', entitytype = 'EG03', help = 'A search key allows you a fast method of finding a particular record. If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', obscuretype = '', seqno = 40, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))), 'nl_BE', 'Y', 'Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record. If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Search Key'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Search key for the record in the format required - must be unique',Help = 'A search key allows you a fast method of finding a particular record. If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',Name = 'Search Key' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))), 'fr_FR', 'Y', 'Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record. If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Code'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Search key for the record in the format required - must be unique',Help = 'A search key allows you a fast method of finding a particular record. If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',Name = 'Code' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Types Echeances' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'TypesEcheances')),
'Tenant',
'Identifies the Client/Tenant for this installation.',
22,
'',
'EG03',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Types Echeances' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'TypesEcheances')), name = 'Tenant', description = 'Identifies the Client/Tenant for this installation.', displaylength = 22, displaylogic = '', entitytype = 'EG03', help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', obscuretype = '', seqno = 10, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))), 'nl_BE', 'Y', 'Identifies the Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Tenant'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies the Client/Tenant for this installation.',Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Name = 'Tenant' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))), 'fr_FR', 'Y', 'Identifies the Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Soci�t�'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies the Client/Tenant for this installation.',Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Name = 'Soci�t�' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_TypeEcheance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Types Echeances' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'TypesEcheances')),
'Z_TypeEcheance',
'Z_TypeEcheance',
10,
'',
'EG03',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_TypeEcheance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Types Echeances' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'TypesEcheances')), name = 'Z_TypeEcheance', description = 'Z_TypeEcheance', displaylength = 10, displaylogic = '', entitytype = 'EG03', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_TypeEcheance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_TypeEcheance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))), 'nl_BE', 'Y', 'Z_TypeEcheance','','Z_TypeEcheance'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_TypeEcheance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Z_TypeEcheance',Help = '',Name = 'Z_TypeEcheance' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_TypeEcheance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_TypeEcheance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))), 'fr_FR', 'Y', 'Z_TypeEcheance','','Z_TypeEcheance'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_TypeEcheance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Z_TypeEcheance',Help = '',Name = 'Z_TypeEcheance' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_TypeEcheance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'fr_FR';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'TypesEcheances','TypesEcheances',
'W',
'',
'EG03',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = 'TypesEcheances'),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'TypesEcheances' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'TypesEcheances', action = 'W', description = '', entitytype = 'EG03', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'TypesEcheances'), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'TypesEcheances' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='TypesEcheances'), 'nl_BE', 'Y', '','TypesEcheances'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='TypesEcheances') and ad_language = 'nl_BE');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'TypesEcheances' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='TypesEcheances') and ad_language = 'nl_BE';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='TypesEcheances'), 'fr_FR', 'Y', '','Types Ech�ances'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='TypesEcheances') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Types Ech�ances' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='TypesEcheances') and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EG03 - Types Ech�ances', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EG03' ;

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = 'Z_TypeEcheance', entitytype = 'EG03', help = '', importtable = 'N', loadseq = 140, name = 'Z_TypeEcheance', replicationtype = 'L', isactive = 'Y', isdeleteable = 'Y', ishighvolume = 'Y', issecurityenabled = 'N', isview = 'N', ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'Z_TypeEcheance' ;

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'TypesEcheances') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'TypesEcheances')); 

