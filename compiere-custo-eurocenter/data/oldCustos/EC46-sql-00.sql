insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EC46','EC46 - Modif POS 2.2.0011',
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
where not exists (select 1 from AD_EntityType where EntityType = 'EC46' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC46 - Modif POS 2.2.0011', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC46' ;

insert into AD_Window (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,Value,name, ad_color_id, ad_image_id, description, entitytype, help, windowtype, winheight, winwidth, isactive, isbetafunctionality, isdefault ,ad_ctxarea_id, iscustomdefault) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Window'),'Inventory Move_175','Inventory Move175',
(select AD_Color_ID from AD_Color where Name = ''),
(select AD_Image_ID from AD_Image where Name = ''),
'Inventory Move175',
'EC46',
'The Inventory Move Window allows you to move inventory from one location or warehouse to another.  After the appropriate lines are entered selecting the ''Process Movements'' button will adjust the inventory.',
'T',
0,
0,
'Y',
'N',
'N',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
'N'
 from dual  
where not exists (select 1 from AD_Window where Value = 'Inventory Move_175' );

update AD_Window set Updated = sysdate, UpdatedBy = 0, name = 'Inventory Move175', ad_color_id = (select AD_Color_ID from AD_Color where Name = ''), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), description = 'Inventory Move175', entitytype = 'EC46', help = 'The Inventory Move Window allows you to move inventory from one location or warehouse to another.  After the appropriate lines are entered selecting the ''Process Movements'' button will adjust the inventory.', windowtype = 'T', winheight = 0, winwidth = 0, isactive = 'Y', isbetafunctionality = 'N', isdefault = 'N', ad_ctxarea_id = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), iscustomdefault = 'N' 
where Value = 'Inventory Move_175' ;

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='Inventory Move_175'), 'fr_FR', 'Y', 'Inventory Move175','The Inventory Move Window allows you to move inventory from one location or warehouse to another.  After the appropriate lines are entered selecting the ''Process Movements'' button will adjust the inventory.','Livraison client pour un autre magasin'
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Inventory Move_175') and ad_language = 'fr_FR');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Inventory Move175',Help = 'The Inventory Move Window allows you to move inventory from one location or warehouse to another.  After the appropriate lines are entered selecting the ''Process Movements'' button will adjust the inventory.',Name = 'Livraison client pour un autre magasin' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Inventory Move_175') and ad_language = 'fr_FR';

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='Inventory Move_175'), 'nl_NL', 'Y', 'Inventory Move175','The Inventory Move Window allows you to move inventory from one location or warehouse to another.  After the appropriate lines are entered selecting the ''Process Movements'' button will adjust the inventory.','Inventory Move175'
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Inventory Move_175') and ad_language = 'nl_NL');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Inventory Move175',Help = 'The Inventory Move Window allows you to move inventory from one location or warehouse to another.  After the appropriate lines are entered selecting the ''Process Movements'' button will adjust the inventory.',Name = 'Inventory Move175' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Inventory Move_175') and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_ComID',(select AD_Element_ID from AD_Element where ColumnName = 'Z_ComID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_TrxMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC46',
40,
'',
'Z_ComID',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_ComID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_TrxMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_ComID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_TrxMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC46', fieldlength = 40, help = '', name = 'Z_ComID', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_ComID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_TrxMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_ComID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_TrxMsg')), 'fr_FR', 'Y', 'Z_ComID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ComID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_TrxMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Z_ComID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ComID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_TrxMsg')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_ComID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_TrxMsg')), 'nl_NL', 'Y', 'Z_ComID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ComID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_TrxMsg')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Z_ComID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ComID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_TrxMsg')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_Com',(select AD_Element_ID from AD_Element where ColumnName = 'Z_Com'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_TrxMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC46',
40,
'',
'communication structurée',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_Com'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_TrxMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_Com'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_TrxMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC46', fieldlength = 40, help = '', name = 'communication structurée', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_Com'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_TrxMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_Com' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_TrxMsg')), 'fr_FR', 'Y', 'communication structurée'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_Com' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_TrxMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'communication structurée' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_Com' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_TrxMsg')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_Com' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_TrxMsg')), 'nl_NL', 'Y', 'communication structurée'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_Com' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_TrxMsg')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'communication structurée' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_Com' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_TrxMsg')) and ad_language = 'nl_NL';

insert into AD_Tab (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,Value,name, ad_columnsortorder_id, ad_columnsortyesno_id, ad_column_id, ad_image_id, ad_process_id, ad_table_id, ad_window_id, commitwarning, description, entitytype, help, importfields, included_tab_id, orderbyclause, seqno, tablevel, whereclause, isactive, hastree, isinfotab, isreadonly, issinglerow, issorttab, istranslationtab, DISPLAYLOGIC, ISADVANCEDTAB, ISINSERTRECORD, READONLYLOGIC, AD_CTXAREA_ID, ISDISPLAYED, REFERENCED_TAB_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Tab'),'Move_260','Move',
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'M_Movement')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'M_Movement')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'M_Movement')),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Table_ID from AD_Table where TableName = 'M_Movement'),
(select AD_Window_ID from AD_Window where Value = 'Inventory Move_175'),
'',
'',
'EC46',
'',
'N',
(select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'',
10,
0,
'M_Movement.C_DocType_ID=(select C_DocType_ID from C_DocType where Name =''Livraison pour le compte d''un autre magasin'')',
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
where not exists (select 1 from AD_Tab where Value = 'Move_260'  and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

update AD_Tab set Updated = sysdate, UpdatedBy = 0, name = 'Move', ad_columnsortorder_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'M_Movement')), ad_columnsortyesno_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'M_Movement')), ad_column_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'M_Movement')), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'M_Movement'), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175'), commitwarning = '', description = '', entitytype = 'EC46', help = '', importfields = 'N', included_tab_id = (select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), orderbyclause = '', seqno = 10, tablevel = 0, whereclause = 'M_Movement.C_DocType_ID=(select C_DocType_ID from C_DocType where Name =''Livraison pour le compte d''un autre magasin'')', isactive = 'Y', hastree = 'N', isinfotab = 'N', isreadonly = 'N', issinglerow = 'Y', issorttab = 'N', istranslationtab = 'N', DISPLAYLOGIC = '', ISADVANCEDTAB = 'N', ISINSERTRECORD = 'Y', READONLYLOGIC = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ISDISPLAYED = 'Y', REFERENCED_TAB_ID = (select AD_Tab_ID from AD_Tab where Value = '') 
where Value = 'Move_260'  and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175');

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')), 'fr_FR', 'Y', '','','','Livraison client pour un autre magasin'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')) and ad_language = 'fr_FR');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'Livraison client pour un autre magasin' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')) and ad_language = 'fr_FR';

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')), 'nl_NL', 'Y', '','','','Move'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')) and ad_language = 'nl_NL');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'Move' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')) and ad_language = 'nl_NL';

insert into AD_Tab (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,Value,name, ad_columnsortorder_id, ad_columnsortyesno_id, ad_column_id, ad_image_id, ad_process_id, ad_table_id, ad_window_id, commitwarning, description, entitytype, help, importfields, included_tab_id, orderbyclause, seqno, tablevel, whereclause, isactive, hastree, isinfotab, isreadonly, issinglerow, issorttab, istranslationtab, DISPLAYLOGIC, ISADVANCEDTAB, ISINSERTRECORD, READONLYLOGIC, AD_CTXAREA_ID, ISDISPLAYED, REFERENCED_TAB_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Tab'),'Move Line_261','Move lines',
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'M_MovementLine')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'M_MovementLine')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'M_MovementLine')),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Table_ID from AD_Table where TableName = 'M_MovementLine'),
(select AD_Window_ID from AD_Window where Value = 'Inventory Move_175'),
'',
'',
'EC46',
'',
'N',
(select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
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
'@Processed@=Y',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
'Y',
(select AD_Tab_ID from AD_Tab where Value = '')
 from dual  
where not exists (select 1 from AD_Tab where Value = 'Move Line_261'  and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

update AD_Tab set Updated = sysdate, UpdatedBy = 0, name = 'Move lines', ad_columnsortorder_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'M_MovementLine')), ad_columnsortyesno_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'M_MovementLine')), ad_column_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'M_MovementLine')), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'M_MovementLine'), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175'), commitwarning = '', description = '', entitytype = 'EC46', help = '', importfields = 'N', included_tab_id = (select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), orderbyclause = '', seqno = 20, tablevel = 1, whereclause = '', isactive = 'Y', hastree = 'N', isinfotab = 'N', isreadonly = 'N', issinglerow = 'N', issorttab = 'N', istranslationtab = 'N', DISPLAYLOGIC = '', ISADVANCEDTAB = 'N', ISINSERTRECORD = 'Y', READONLYLOGIC = '@Processed@=Y', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ISDISPLAYED = 'Y', REFERENCED_TAB_ID = (select AD_Tab_ID from AD_Tab where Value = '') 
where Value = 'Move Line_261'  and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175');

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')), 'fr_FR', 'Y', '','','','Lignes'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')) and ad_language = 'fr_FR');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'Lignes' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')) and ad_language = 'fr_FR';

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')), 'nl_NL', 'Y', '','','','Move lines'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')) and ad_language = 'nl_NL');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'Move lines' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Activity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Activity',
'Business Activity',
10,
'',
'EC46',
'Activities indicate tasks that are performed and used to utilize Activity based Costing',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Activity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Activity', description = 'Business Activity', displaylength = 10, displaylogic = '', entitytype = 'EC46', help = 'Activities indicate tasks that are performed and used to utilize Activity based Costing', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Activity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Activity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Business Activity','Activities indicate tasks that are performed and used to utilize Activity based Costing','Activity'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Activity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Business Activity',Help = 'Activities indicate tasks that are performed and used to utilize Activity based Costing',Name = 'Activity' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Activity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Activity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Business Activity','Activities indicate tasks that are performed and used to utilize Activity based Costing','Activity'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Activity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Business Activity',Help = 'Activities indicate tasks that are performed and used to utilize Activity based Costing',Name = 'Activity' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Activity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Processed',
'The document has been processed',
1,
'',
'EC46',
'The Processed checkbox indicates that a document has been processed.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Processed', description = 'The document has been processed', displaylength = 1, displaylogic = '', entitytype = 'EC46', help = 'The Processed checkbox indicates that a document has been processed.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'The document has been processed','The Processed checkbox indicates that a document has been processed.','Processed'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The document has been processed',Help = 'The Processed checkbox indicates that a document has been processed.',Name = 'Processed' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'The document has been processed','The Processed checkbox indicates that a document has been processed.','Processed'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The document has been processed',Help = 'The Processed checkbox indicates that a document has been processed.',Name = 'Processed' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Trx Organization',
'Performing or initiating organization',
10,
'',
'EC46',
'The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Trx Organization', description = 'Performing or initiating organization', displaylength = 10, displaylogic = '', entitytype = 'EC46', help = 'The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Performing or initiating organization','The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.','Trx Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Performing or initiating organization',Help = 'The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.',Name = 'Trx Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Performing or initiating organization','The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.','Trx Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Performing or initiating organization',Help = 'The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.',Name = 'Trx Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_MovementLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Move Line',
'Inventory Move document Line',
14,
'',
'EC46',
'The Movement Line indicates the inventory movement document line (if applicable) for this transaction',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_MovementLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Move Line', description = 'Inventory Move document Line', displaylength = 14, displaylogic = '', entitytype = 'EC46', help = 'The Movement Line indicates the inventory movement document line (if applicable) for this transaction', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_MovementLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_MovementLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Inventory Move document Line','The Movement Line indicates the inventory movement document line (if applicable) for this transaction','Move Line'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_MovementLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Inventory Move document Line',Help = 'The Movement Line indicates the inventory movement document line (if applicable) for this transaction',Name = 'Move Line' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_MovementLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_MovementLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Inventory Move document Line','The Movement Line indicates the inventory movement document line (if applicable) for this transaction','Move Line'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_MovementLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Inventory Move document Line',Help = 'The Movement Line indicates the inventory movement document line (if applicable) for this transaction',Name = 'Move Line' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_MovementLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Tenant',
'Identifies the Client/Tenant for this installation.',
14,
'',
'EC46',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Tenant', description = 'Identifies the Client/Tenant for this installation.', displaylength = 14, displaylogic = '', entitytype = 'EC46', help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', obscuretype = '', seqno = 10, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 10 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Identifies the Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Tenant'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies the Client/Tenant for this installation.',Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Name = 'Tenant' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Identifies the Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Tenant'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies the Client/Tenant for this installation.',Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Name = 'Tenant' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Organization',
'Organizational entity within Tenant',
14,
'',
'EC46',
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
'',
20,
0,
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Organization', description = 'Organizational entity within Tenant', displaylength = 14, displaylogic = '', entitytype = 'EC46', help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', obscuretype = '', seqno = 20, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 20 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Organizational entity within Tenant','An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organizational entity within Tenant',Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Name = 'Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Organizational entity within Tenant','An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organizational entity within Tenant',Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Name = 'Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_Movement_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Inventory Move',
'Movement of Inventory',
14,
'',
'EC46',
'The Inventory Movement uniquely identifies a group of movement lines.',
'',
30,
0,
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Movement_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Inventory Move', description = 'Movement of Inventory', displaylength = 14, displaylogic = '', entitytype = 'EC46', help = 'The Inventory Movement uniquely identifies a group of movement lines.', obscuretype = '', seqno = 30, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 30 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Movement_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Movement_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Movement of Inventory','The Inventory Movement uniquely identifies a group of movement lines.','Inventory Move'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Movement_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Movement of Inventory',Help = 'The Inventory Movement uniquely identifies a group of movement lines.',Name = 'Inventory Move' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Movement_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Movement_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Movement of Inventory','The Inventory Movement uniquely identifies a group of movement lines.','Inventory Move'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Movement_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Movement of Inventory',Help = 'The Inventory Movement uniquely identifies a group of movement lines.',Name = 'Inventory Move' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Movement_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Line No',
'Unique line for this document',
11,
'',
'EC46',
'Indicates the unique line for a document.  It will also control the display order of the lines within a document.',
'',
40,
1,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Line No', description = 'Unique line for this document', displaylength = 11, displaylogic = '', entitytype = 'EC46', help = 'Indicates the unique line for a document.  It will also control the display order of the lines within a document.', obscuretype = '', seqno = 40, sortno = 1, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 40 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Unique line for this document','Indicates the unique line for a document.  It will also control the display order of the lines within a document.','Line No'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Unique line for this document',Help = 'Indicates the unique line for a document.  It will also control the display order of the lines within a document.',Name = 'Line No' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Unique line for this document','Indicates the unique line for a document.  It will also control the display order of the lines within a document.','Line No'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Unique line for this document',Help = 'Indicates the unique line for a document.  It will also control the display order of the lines within a document.',Name = 'Line No' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Description',
'Optional short description of the record',
60,
'',
'EC46',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Description', description = 'Optional short description of the record', displaylength = 60, displaylogic = '', entitytype = 'EC46', help = 'A description is limited to 255 characters.', obscuretype = '', seqno = 50, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 50 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Optional short description of the record','A description is limited to 255 characters.','Description'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Optional short description of the record',Help = 'A description is limited to 255 characters.',Name = 'Description' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Optional short description of the record','A description is limited to 255 characters.','Description'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Optional short description of the record',Help = 'A description is limited to 255 characters.',Name = 'Description' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Active',
'The record is active in the system',
1,
'',
'EC46',
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
'Y',
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
60
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Active', description = 'The record is active in the system', displaylength = 1, displaylogic = '', entitytype = 'EC46', help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', obscuretype = '', seqno = 60, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 60 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The record is active in the system',Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Name = 'Active' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The record is active in the system',Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Name = 'Active' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Product',
'Product, Service, Item',
26,
'',
'EC46',
'Identifies an item which is either purchased or sold in this organization.',
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
'',
'',
'Y',
70
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Product', description = 'Product, Service, Item', displaylength = 26, displaylogic = '', entitytype = 'EC46', help = 'Identifies an item which is either purchased or sold in this organization.', obscuretype = '', seqno = 70, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'Y', MRSEQNO = 70 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Product, Service, Item','Identifies an item which is either purchased or sold in this organization.','Product'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Product, Service, Item',Help = 'Identifies an item which is either purchased or sold in this organization.',Name = 'Product' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Product, Service, Item','Identifies an item which is either purchased or sold in this organization.','Product'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Product, Service, Item',Help = 'Identifies an item which is either purchased or sold in this organization.',Name = 'Product' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_AttributeSetInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Attribute Set Instance',
'Product Attribute Set Instance',
26,
'',
'EC46',
'Identifies the values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.',
'',
80,
0,
'Y',
'N',
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
80
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_AttributeSetInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Attribute Set Instance', description = 'Product Attribute Set Instance', displaylength = 26, displaylogic = '', entitytype = 'EC46', help = 'Identifies the values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.', obscuretype = '', seqno = 80, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 80 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_AttributeSetInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_AttributeSetInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Product Attribute Set Instance','Identifies the values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.','Attribute Set Instance'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_AttributeSetInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Product Attribute Set Instance',Help = 'Identifies the values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.',Name = 'Attribute Set Instance' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_AttributeSetInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_AttributeSetInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Product Attribute Set Instance','Identifies the values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.','Attribute Set Instance'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_AttributeSetInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Product Attribute Set Instance',Help = 'Identifies the values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.',Name = 'Attribute Set Instance' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_AttributeSetInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_AttributeSetInstanceTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Attribute Set Instance To',
'Target Product Attribute Set Instance',
26,
'',
'EC46',
'',
'',
90,
0,
'Y',
'N',
'N',
'N',
'N',
'N',
'Y',
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
90
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_AttributeSetInstanceTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Attribute Set Instance To', description = 'Target Product Attribute Set Instance', displaylength = 26, displaylogic = '', entitytype = 'EC46', help = '', obscuretype = '', seqno = 90, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 90 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_AttributeSetInstanceTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_AttributeSetInstanceTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Target Product Attribute Set Instance','','Attribute Set Instance To'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_AttributeSetInstanceTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Target Product Attribute Set Instance',Help = '',Name = 'Attribute Set Instance To' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_AttributeSetInstanceTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_AttributeSetInstanceTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Target Product Attribute Set Instance','','Attribute Set Instance To'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_AttributeSetInstanceTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Target Product Attribute Set Instance',Help = '',Name = 'Attribute Set Instance To' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_AttributeSetInstanceTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Warehouse',
'Storage Warehouse and Service Point',
22,
'',
'EC46',
'The Warehouse identifies a unique Warehouse where products are stored or Services are provided.',
'',
100,
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
'',
'N',
100
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Warehouse', description = 'Storage Warehouse and Service Point', displaylength = 22, displaylogic = '', entitytype = 'EC46', help = 'The Warehouse identifies a unique Warehouse where products are stored or Services are provided.', obscuretype = '', seqno = 100, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 100 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Storage Warehouse and Service Point','The Warehouse identifies a unique Warehouse where products are stored or Services are provided.','Warehouse'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Storage Warehouse and Service Point',Help = 'The Warehouse identifies a unique Warehouse where products are stored or Services are provided.',Name = 'Warehouse' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Storage Warehouse and Service Point','The Warehouse identifies a unique Warehouse where products are stored or Services are provided.','Warehouse'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Storage Warehouse and Service Point',Help = 'The Warehouse identifies a unique Warehouse where products are stored or Services are provided.',Name = 'Warehouse' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Magasin / dépôt vers',
'',
22,
'',
'EC46',
'',
'',
110,
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
110
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Magasin / dépôt vers', description = '', displaylength = 22, displaylogic = '', entitytype = 'EC46', help = '', obscuretype = '', seqno = 110, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 110 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', '','','Magasin / dépôt vers'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Magasin / dépôt vers' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', '','','Magasin / dépôt vers'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Magasin / dépôt vers' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_Locator_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Locator',
'Warehouse Locator',
14,
'',
'EC46',
'The Locator indicates where in a Warehouse a product is located.',
'',
120,
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
'',
'N',
120
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Locator_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Locator', description = 'Warehouse Locator', displaylength = 14, displaylogic = '', entitytype = 'EC46', help = 'The Locator indicates where in a Warehouse a product is located.', obscuretype = '', seqno = 120, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 120 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Locator_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Locator_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Warehouse Locator','The Locator indicates where in a Warehouse a product is located.','Locator'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Locator_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Warehouse Locator',Help = 'The Locator indicates where in a Warehouse a product is located.',Name = 'Locator' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Locator_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Locator_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Warehouse Locator','The Locator indicates where in a Warehouse a product is located.','Locator'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Locator_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Warehouse Locator',Help = 'The Locator indicates where in a Warehouse a product is located.',Name = 'Locator' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Locator_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_LocatorTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Locator To',
'Location inventory is moved to',
14,
'',
'EC46',
'The Locator To indicates the location where the inventory is being moved to.',
'',
130,
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
130
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_LocatorTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Locator To', description = 'Location inventory is moved to', displaylength = 14, displaylogic = '', entitytype = 'EC46', help = 'The Locator To indicates the location where the inventory is being moved to.', obscuretype = '', seqno = 130, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 130 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_LocatorTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_LocatorTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Location inventory is moved to','The Locator To indicates the location where the inventory is being moved to.','Locator To'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_LocatorTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Location inventory is moved to',Help = 'The Locator To indicates the location where the inventory is being moved to.',Name = 'Locator To' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_LocatorTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_LocatorTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Location inventory is moved to','The Locator To indicates the location where the inventory is being moved to.','Locator To'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_LocatorTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Location inventory is moved to',Help = 'The Locator To indicates the location where the inventory is being moved to.',Name = 'Locator To' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_LocatorTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'MovementQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Movement Quantity',
'Quantity of a product moved.',
26,
'',
'EC46',
'The Movement Quantity indicates the quantity of a product that has been moved.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'MovementQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Movement Quantity', description = 'Quantity of a product moved.', displaylength = 26, displaylogic = '', entitytype = 'EC46', help = 'The Movement Quantity indicates the quantity of a product that has been moved.', obscuretype = '', seqno = 140, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 140 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'MovementQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MovementQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Quantity of a product moved.','The Movement Quantity indicates the quantity of a product that has been moved.','Movement Quantity'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MovementQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Quantity of a product moved.',Help = 'The Movement Quantity indicates the quantity of a product that has been moved.',Name = 'Movement Quantity' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MovementQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MovementQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Quantity of a product moved.','The Movement Quantity indicates the quantity of a product that has been moved.','Movement Quantity'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MovementQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Quantity of a product moved.',Help = 'The Movement Quantity indicates the quantity of a product that has been moved.',Name = 'Movement Quantity' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MovementQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'TargetQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Target Quantity',
'Target Movement Quantity',
26,
'',
'EC46',
'The Quantity which should have been received',
'',
150,
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
150
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'TargetQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Target Quantity', description = 'Target Movement Quantity', displaylength = 26, displaylogic = '', entitytype = 'EC46', help = 'The Quantity which should have been received', obscuretype = '', seqno = 150, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 150 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'TargetQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TargetQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Target Movement Quantity','The Quantity which should have been received','Target Quantity'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TargetQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Target Movement Quantity',Help = 'The Quantity which should have been received',Name = 'Target Quantity' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TargetQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TargetQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Target Movement Quantity','The Quantity which should have been received','Target Quantity'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TargetQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Target Movement Quantity',Help = 'The Quantity which should have been received',Name = 'Target Quantity' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TargetQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ScrappedQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Scrapped Quantity',
'The Quantity scrapped due to QA issues',
26,
'',
'EC46',
'',
'',
160,
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
160
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ScrappedQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Scrapped Quantity', description = 'The Quantity scrapped due to QA issues', displaylength = 26, displaylogic = '', entitytype = 'EC46', help = '', obscuretype = '', seqno = 160, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 160 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ScrappedQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ScrappedQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'The Quantity scrapped due to QA issues','','Scrapped Quantity'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ScrappedQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The Quantity scrapped due to QA issues',Help = '',Name = 'Scrapped Quantity' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ScrappedQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ScrappedQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'The Quantity scrapped due to QA issues','','Scrapped Quantity'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ScrappedQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The Quantity scrapped due to QA issues',Help = '',Name = 'Scrapped Quantity' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ScrappedQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ConfirmedQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Confirmed Quantity',
'Confirmation of a received quantity',
26,
'',
'EC46',
'Confirmation of a received quantity',
'',
170,
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
170
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ConfirmedQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move Line_261' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Confirmed Quantity', description = 'Confirmation of a received quantity', displaylength = 26, displaylogic = '', entitytype = 'EC46', help = 'Confirmation of a received quantity', obscuretype = '', seqno = 170, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 170 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ConfirmedQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ConfirmedQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Confirmation of a received quantity','Confirmation of a received quantity','Confirmed Quantity'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ConfirmedQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Confirmation of a received quantity',Help = 'Confirmation of a received quantity',Name = 'Confirmed Quantity' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ConfirmedQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ConfirmedQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Confirmation of a received quantity','Confirmation of a received quantity','Confirmed Quantity'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ConfirmedQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Confirmation of a received quantity',Help = 'Confirmation of a received quantity',Name = 'Confirmed Quantity' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ConfirmedQty' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_261' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Business Partner',
'Identifies a Business Partner',
22,
'',
'EC46',
'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Business Partner', description = 'Identifies a Business Partner', displaylength = 22, displaylogic = '', entitytype = 'EC46', help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Business Partner'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies a Business Partner',Help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',Name = 'Business Partner' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Business Partner'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies a Business Partner',Help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',Name = 'Business Partner' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'User2_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Reference'),
(select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'User List 2',
'User defined list element #2',
14,
'@$Element_U2@=Y',
'EC46',
'The user defined element displays the optional elements that have been defined for this account combination.',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'User2_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Reference'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'User List 2', description = 'User defined list element #2', displaylength = 14, displaylogic = '@$Element_U2@=Y', entitytype = 'EC46', help = 'The user defined element displays the optional elements that have been defined for this account combination.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'User2_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'User2_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'User defined list element #2','The user defined element displays the optional elements that have been defined for this account combination.','User List 2'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'User2_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'User defined list element #2',Help = 'The user defined element displays the optional elements that have been defined for this account combination.',Name = 'User List 2' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'User2_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'User2_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'User defined list element #2','The user defined element displays the optional elements that have been defined for this account combination.','User List 2'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'User2_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'User defined list element #2',Help = 'The user defined element displays the optional elements that have been defined for this account combination.',Name = 'User List 2' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'User2_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_Production_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Work Order',
'Work Order',
22,
'',
'EC46',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_Production_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Work Order', description = 'Work Order', displaylength = 22, displaylogic = '', entitytype = 'EC46', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_Production_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Production_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Work Order','','Work Order'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Production_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Work Order',Help = '',Name = 'Work Order' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Production_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Production_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Work Order','','Work Order'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Production_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Work Order',Help = '',Name = 'Work Order' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Production_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Campaign_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Reference'),
(select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Campaign',
'Marketing Campaign',
14,
'@$Element_MC@=Y',
'EC46',
'The Campaign defines a unique marketing program.  Projects can be associated with a pre defined Marketing Campaign.  You can then report based on a specific Campaign.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Campaign_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Reference'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Campaign', description = 'Marketing Campaign', displaylength = 14, displaylogic = '@$Element_MC@=Y', entitytype = 'EC46', help = 'The Campaign defines a unique marketing program.  Projects can be associated with a pre defined Marketing Campaign.  You can then report based on a specific Campaign.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Campaign_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Campaign_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Marketing Campaign','The Campaign defines a unique marketing program.  Projects can be associated with a pre defined Marketing Campaign.  You can then report based on a specific Campaign.','Campaign'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Campaign_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Marketing Campaign',Help = 'The Campaign defines a unique marketing program.  Projects can be associated with a pre defined Marketing Campaign.  You can then report based on a specific Campaign.',Name = 'Campaign' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Campaign_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Campaign_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Marketing Campaign','The Campaign defines a unique marketing program.  Projects can be associated with a pre defined Marketing Campaign.  You can then report based on a specific Campaign.','Campaign'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Campaign_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Marketing Campaign',Help = 'The Campaign defines a unique marketing program.  Projects can be associated with a pre defined Marketing Campaign.  You can then report based on a specific Campaign.',Name = 'Campaign' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Campaign_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Reference'),
(select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Trx Organization',
'Performing or initiating organization',
14,
'@$Element_OT@=Y',
'EC46',
'The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Reference'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Trx Organization', description = 'Performing or initiating organization', displaylength = 14, displaylogic = '@$Element_OT@=Y', entitytype = 'EC46', help = 'The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Performing or initiating organization','The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.','Trx Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Performing or initiating organization',Help = 'The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.',Name = 'Trx Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Performing or initiating organization','The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.','Trx Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Performing or initiating organization',Help = 'The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.',Name = 'Trx Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Activity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Reference'),
(select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Activity',
'Business Activity',
14,
'@$Element_AY@=Y',
'EC46',
'Activities indicate tasks that are performed and used to utilize Activity based Costing',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Activity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Reference'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Activity', description = 'Business Activity', displaylength = 14, displaylogic = '@$Element_AY@=Y', entitytype = 'EC46', help = 'Activities indicate tasks that are performed and used to utilize Activity based Costing', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Activity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Activity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Business Activity','Activities indicate tasks that are performed and used to utilize Activity based Costing','Activity'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Activity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Business Activity',Help = 'Activities indicate tasks that are performed and used to utilize Activity based Costing',Name = 'Activity' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Activity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Activity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Business Activity','Activities indicate tasks that are performed and used to utilize Activity based Costing','Activity'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Activity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Business Activity',Help = 'Activities indicate tasks that are performed and used to utilize Activity based Costing',Name = 'Activity' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Activity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Process Now',
'',
1,
'',
'EC46',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Process Now', description = '', displaylength = 1, displaylogic = '', entitytype = 'EC46', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', '','','Process Now'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Process Now' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', '','','Process Now'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Process Now' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ApprovalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Approval Amount',
'Document Approval Amount',
26,
'',
'EC46',
'Approval Amount for Workflow',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ApprovalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Approval Amount', description = 'Document Approval Amount', displaylength = 26, displaylogic = '', entitytype = 'EC46', help = 'Approval Amount for Workflow', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ApprovalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ApprovalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Document Approval Amount','Approval Amount for Workflow','Approval Amount'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ApprovalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Document Approval Amount',Help = 'Approval Amount for Workflow',Name = 'Approval Amount' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ApprovalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ApprovalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Document Approval Amount','Approval Amount for Workflow','Approval Amount'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ApprovalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Document Approval Amount',Help = 'Approval Amount for Workflow',Name = 'Approval Amount' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ApprovalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Project_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Reference'),
(select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Project',
'Financial Project',
14,
'@$Element_PJ@=Y',
'EC46',
'A Project allows you to track and control internal or external activities.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Project_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Reference'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Project', description = 'Financial Project', displaylength = 14, displaylogic = '@$Element_PJ@=Y', entitytype = 'EC46', help = 'A Project allows you to track and control internal or external activities.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Project_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Project_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Financial Project','A Project allows you to track and control internal or external activities.','Project'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Project_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Financial Project',Help = 'A Project allows you to track and control internal or external activities.',Name = 'Project' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Project_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Project_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Financial Project','A Project allows you to track and control internal or external activities.','Project'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Project_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Financial Project',Help = 'A Project allows you to track and control internal or external activities.',Name = 'Project' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Project_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Active',
'The record is active in the system',
1,
'',
'EC46',
'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Active', description = 'The record is active in the system', displaylength = 1, displaylogic = '', entitytype = 'EC46', help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The record is active in the system',Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Name = 'Active' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The record is active in the system',Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Name = 'Active' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Processed',
'The document has been processed',
1,
'@Processed@=Y',
'EC46',
'The Processed checkbox indicates that a document has been processed.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Processed', description = 'The document has been processed', displaylength = 1, displaylogic = '@Processed@=Y', entitytype = 'EC46', help = 'The Processed checkbox indicates that a document has been processed.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'The document has been processed','The Processed checkbox indicates that a document has been processed.','Processed'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The document has been processed',Help = 'The Processed checkbox indicates that a document has been processed.',Name = 'Processed' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'The document has been processed','The Processed checkbox indicates that a document has been processed.','Processed'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The document has been processed',Help = 'The Processed checkbox indicates that a document has been processed.',Name = 'Processed' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_Movement_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Inventory Move',
'Movement of Inventory',
14,
'',
'EC46',
'The Inventory Movement uniquely identifies a group of movement lines.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Movement_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Inventory Move', description = 'Movement of Inventory', displaylength = 14, displaylogic = '', entitytype = 'EC46', help = 'The Inventory Movement uniquely identifies a group of movement lines.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Movement_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Movement_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Movement of Inventory','The Inventory Movement uniquely identifies a group of movement lines.','Inventory Move'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Movement_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Movement of Inventory',Help = 'The Inventory Movement uniquely identifies a group of movement lines.',Name = 'Inventory Move' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Movement_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Movement_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Movement of Inventory','The Inventory Movement uniquely identifies a group of movement lines.','Inventory Move'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Movement_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Movement of Inventory',Help = 'The Inventory Movement uniquely identifies a group of movement lines.',Name = 'Inventory Move' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Movement_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsApproved' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Status'),
(select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Approved',
'Indicates if this document requires approval',
1,
'',
'EC46',
'The Approved checkbox indicates if this document requires approval before it can be processed.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsApproved' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Status'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Approved', description = 'Indicates if this document requires approval', displaylength = 1, displaylogic = '', entitytype = 'EC46', help = 'The Approved checkbox indicates if this document requires approval before it can be processed.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsApproved' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsApproved' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Indicates if this document requires approval','The Approved checkbox indicates if this document requires approval before it can be processed.','Approved'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsApproved' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Indicates if this document requires approval',Help = 'The Approved checkbox indicates if this document requires approval before it can be processed.',Name = 'Approved' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsApproved' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsApproved' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Indicates if this document requires approval','The Approved checkbox indicates if this document requires approval before it can be processed.','Approved'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsApproved' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Indicates if this document requires approval',Help = 'The Approved checkbox indicates if this document requires approval before it can be processed.',Name = 'Approved' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsApproved' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'User1_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Reference'),
(select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'User List 1',
'User defined list element #1',
14,
'@$Element_U1@=Y',
'EC46',
'The user defined element displays the optional elements that have been defined for this account combination.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'User1_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Reference'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'User List 1', description = 'User defined list element #1', displaylength = 14, displaylogic = '@$Element_U1@=Y', entitytype = 'EC46', help = 'The user defined element displays the optional elements that have been defined for this account combination.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'User1_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'User1_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'User defined list element #1','The user defined element displays the optional elements that have been defined for this account combination.','User List 1'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'User1_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'User defined list element #1',Help = 'The user defined element displays the optional elements that have been defined for this account combination.',Name = 'User List 1' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'User1_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'User1_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'User defined list element #1','The user defined element displays the optional elements that have been defined for this account combination.','User List 1'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'User1_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'User defined list element #1',Help = 'The user defined element displays the optional elements that have been defined for this account combination.',Name = 'User List 1' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'User1_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Tenant',
'Identifies the Client/Tenant for this installation.',
14,
'',
'EC46',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Tenant', description = 'Identifies the Client/Tenant for this installation.', displaylength = 14, displaylogic = '', entitytype = 'EC46', help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', obscuretype = '', seqno = 10, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 10 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Identifies the Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Tenant'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies the Client/Tenant for this installation.',Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Name = 'Tenant' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Identifies the Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Tenant'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies the Client/Tenant for this installation.',Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Name = 'Tenant' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Organization',
'Organizational entity within Tenant',
14,
'',
'EC46',
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
'',
20,
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
20
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Organization', description = 'Organizational entity within Tenant', displaylength = 14, displaylogic = '', entitytype = 'EC46', help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', obscuretype = '', seqno = 20, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 20 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Organizational entity within Tenant','An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organizational entity within Tenant',Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Name = 'Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Organizational entity within Tenant','An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organizational entity within Tenant',Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Name = 'Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Document No',
'Document sequence number of the document',
20,
'',
'EC46',
'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',
'',
30,
-1,
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
'',
'N',
30
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Document No', description = 'Document sequence number of the document', displaylength = 20, displaylogic = '', entitytype = 'EC46', help = 'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', obscuretype = '', seqno = 30, sortno = -1, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 30 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Document No'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Document sequence number of the document',Help = 'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',Name = 'Document No' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Document No'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Document sequence number of the document',Help = 'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',Name = 'Document No' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Magasin / dépôt vers',
'',
0,
'',
'EC46',
'',
'',
40,
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
35
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Magasin / dépôt vers', description = '', displaylength = 0, displaylogic = '', entitytype = 'EC46', help = '', obscuretype = '', seqno = 40, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 35 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', '','','Magasin / dépôt vers'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Magasin / dépôt vers' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', '','','Magasin / dépôt vers'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Magasin / dépôt vers' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Order Reference',
'Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner',
22,
'',
'EC46',
'The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.',
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
38
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Order Reference', description = 'Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner', displaylength = 22, displaylogic = '', entitytype = 'EC46', help = 'The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.', obscuretype = '', seqno = 50, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 38 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner','The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.','Order Reference'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner',Help = 'The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.',Name = 'Order Reference' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner','The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.','Order Reference'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner',Help = 'The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.',Name = 'Order Reference' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Description',
'Optional short description of the record',
60,
'',
'EC46',
'A description is limited to 255 characters.',
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
'',
'',
'N',
40
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Description', description = 'Optional short description of the record', displaylength = 60, displaylogic = '', entitytype = 'EC46', help = 'A description is limited to 255 characters.', obscuretype = '', seqno = 70, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 40 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Optional short description of the record','A description is limited to 255 characters.','Description'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Optional short description of the record',Help = 'A description is limited to 255 characters.',Name = 'Description' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Optional short description of the record','A description is limited to 255 characters.','Description'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Optional short description of the record',Help = 'A description is limited to 255 characters.',Name = 'Description' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'MovementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Movement Date',
'Date a product was moved in or out of inventory',
14,
'',
'EC46',
'The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.',
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
50
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'MovementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Movement Date', description = 'Date a product was moved in or out of inventory', displaylength = 14, displaylogic = '', entitytype = 'EC46', help = 'The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.', obscuretype = '', seqno = 80, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 50 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'MovementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MovementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Date a product was moved in or out of inventory','The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.','Movement Date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MovementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Date a product was moved in or out of inventory',Help = 'The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.',Name = 'Movement Date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MovementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MovementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Date a product was moved in or out of inventory','The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.','Movement Date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MovementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Date a product was moved in or out of inventory',Help = 'The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.',Name = 'Movement Date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MovementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Document Type',
'Document type or rules',
14,
'',
'EC46',
'The Document Type determines document sequence and processing rules',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'@SQL=(select C_DocType_ID from C_DocType where Name =''Livraison pour le compte d''un autre magasin'')',
'N',
60
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Document Type', description = 'Document type or rules', displaylength = 14, displaylogic = '', entitytype = 'EC46', help = 'The Document Type determines document sequence and processing rules', obscuretype = '', seqno = 60, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '@SQL=(select C_DocType_ID from C_DocType where Name =''Livraison pour le compte d''un autre magasin'')', ISDEFAULTFOCUS = 'N', MRSEQNO = 60 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Document type or rules','The Document Type determines document sequence and processing rules','Document Type'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Document type or rules',Help = 'The Document Type determines document sequence and processing rules',Name = 'Document Type' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Document type or rules','The Document Type determines document sequence and processing rules','Document Type'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Document type or rules',Help = 'The Document Type determines document sequence and processing rules',Name = 'Document Type' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DateReceived' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Date received',
'Date a product was received',
14,
'',
'EC46',
'The Date Received indicates the date that product was received.',
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
70
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateReceived' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Date received', description = 'Date a product was received', displaylength = 14, displaylogic = '', entitytype = 'EC46', help = 'The Date Received indicates the date that product was received.', obscuretype = '', seqno = 90, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 70 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateReceived' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateReceived' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Date a product was received','The Date Received indicates the date that product was received.','Date received'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateReceived' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Date a product was received',Help = 'The Date Received indicates the date that product was received.',Name = 'Date received' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateReceived' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateReceived' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Date a product was received','The Date Received indicates the date that product was received.','Date received'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateReceived' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Date a product was received',Help = 'The Date Received indicates the date that product was received.',Name = 'Date received' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateReceived' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsInTransit' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'In Transit',
'Movement is in transit',
1,
'@C_DocType_ID@=1001466',
'EC46',
'Material Movement is in transit - shipped, but not received. The transaction is completed, if confirmed.',
'',
100,
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
'',
'N',
80
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsInTransit' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'In Transit', description = 'Movement is in transit', displaylength = 1, displaylogic = '@C_DocType_ID@=1001466', entitytype = 'EC46', help = 'Material Movement is in transit - shipped, but not received. The transaction is completed, if confirmed.', obscuretype = '', seqno = 100, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 80 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsInTransit' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsInTransit' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Movement is in transit','Material Movement is in transit - shipped, but not received. The transaction is completed, if confirmed.','In Transit'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsInTransit' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Movement is in transit',Help = 'Material Movement is in transit - shipped, but not received. The transaction is completed, if confirmed.',Name = 'In Transit' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsInTransit' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsInTransit' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Movement is in transit','Material Movement is in transit - shipped, but not received. The transaction is completed, if confirmed.','In Transit'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsInTransit' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Movement is in transit',Help = 'Material Movement is in transit - shipped, but not received. The transaction is completed, if confirmed.',Name = 'In Transit' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsInTransit' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Document Status',
'The current status of the document',
14,
'',
'EC46',
'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',
'',
110,
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
90
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Document Status', description = 'The current status of the document', displaylength = 14, displaylogic = '', entitytype = 'EC46', help = 'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field', obscuretype = '', seqno = 110, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 90 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Document Status'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The current status of the document',Help = 'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',Name = 'Document Status' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Document Status'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The current status of the document',Help = 'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',Name = 'Document Status' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Document Action',
'The targeted status of the document',
23,
'',
'EC46',
'You find the current status in the Document Status field. The options are listed in a popup',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
100
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Document Action', description = 'The targeted status of the document', displaylength = 23, displaylogic = '', entitytype = 'EC46', help = 'You find the current status in the Document Status field. The options are listed in a popup', obscuretype = '', seqno = 120, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 100 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup','Document Action'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The targeted status of the document',Help = 'You find the current status in the Document Status field. The options are listed in a popup',Name = 'Document Action' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup','Document Action'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The targeted status of the document',Help = 'You find the current status in the Document Status field. The options are listed in a popup',Name = 'Document Action' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')),
'Posted',
'Posting status',
23,
'@Processed@=Y &'||' @#ShowAcct@=Y',
'EC46',
'The Posted field indicates the status of the Generation of General Ledger Accounting Lines',
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
'',
'N',
110
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_175')), name = 'Posted', description = 'Posting status', displaylength = 23, displaylogic = '@Processed@=Y &'||' @#ShowAcct@=Y', entitytype = 'EC46', help = 'The Posted field indicates the status of the Generation of General Ledger Accounting Lines', obscuretype = '', seqno = 130, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 110 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'fr_FR', 'Y', 'Posting status','The Posted field indicates the status of the Generation of General Ledger Accounting Lines','Posted'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Posting status',Help = 'The Posted field indicates the status of the Generation of General Ledger Accounting Lines',Name = 'Posted' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))), 'nl_NL', 'Y', 'Posting status','The Posted field indicates the status of the Generation of General Ledger Accounting Lines','Posted'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Posting status',Help = 'The Posted field indicates the status of the Generation of General Ledger Accounting Lines',Name = 'Posted' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_175'))) and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC46 - Modif POS 2.2.0011', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC46' ;

