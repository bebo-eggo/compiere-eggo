insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'3075','3075 - Automatisation du process de réappro',
'',
'',
'Y',
'',
'',
'',
'N',
'1',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = '3075' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '3075 - Automatisation du process de réappro', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '3075' ;

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'M_Product_Category_ID',(select AD_Element_ID from AD_Element where ColumnName = 'M_Product_Category_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'T_Replenish'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Category of a Product',
'3075',
10,
'Identifies the category which this product belongs to.  Product categories are used for pricing and selection.',
'Product Category',
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
where not exists (select 1 from AD_Column where ColumnName = 'M_Product_Category_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'M_Product_Category_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'T_Replenish'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Category of a Product', entitytype = '3075', fieldlength = 10, help = 'Identifies the category which this product belongs to.  Product categories are used for pricing and selection.', name = 'Product Category', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'M_Product_Category_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish')), 'fr_FR', 'Y', 'Catégorie article'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Catégorie article' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish')), 'nl_NL', 'Y', 'Product Categorie'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Product Categorie' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_S_Famille_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Z_S_Famille_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'T_Replenish'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Sous familles',
'3075',
10,
'',
'Sous Famille',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_S_Famille_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_S_Famille_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'T_Replenish'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Sous familles', entitytype = '3075', fieldlength = 10, help = '', name = 'Sous Famille', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_S_Famille_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish')), 'fr_FR', 'Y', 'Sous Famille'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sous Famille' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish')), 'nl_NL', 'Y', 'Sous Famille'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sous Famille' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_S_S_S_Famille_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Z_S_S_S_Famille_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'T_Replenish'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'3075',
10,
'',
'Sous sous sous famille',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_S_S_S_Famille_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_S_S_S_Famille_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'T_Replenish'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '3075', fieldlength = 10, help = '', name = 'Sous sous sous famille', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_S_S_S_Famille_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_S_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish')), 'fr_FR', 'Y', 'Sous sous sous famille'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sous sous sous famille' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_S_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish')), 'nl_NL', 'Y', 'Sous sous sous famille'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sous sous sous famille' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_S_S_Famille_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Z_S_S_Famille_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'T_Replenish'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'3075',
10,
'',
'Sous sous famille',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_S_S_Famille_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_S_S_Famille_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'T_Replenish'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '3075', fieldlength = 10, help = '', name = 'Sous sous famille', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_S_S_Famille_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish')), 'fr_FR', 'Y', 'Sous sous famille'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sous sous famille' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish')), 'nl_NL', 'Y', 'Sous sous famille'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sous sous famille' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'SalesRep_ID',(select AD_Element_ID from AD_Element where ColumnName = 'SalesRep_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User - SalesRep'),
(select AD_Table_ID from AD_Table where TableName = 'T_Replenish'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Company Agent like Sales Representative, Purchase Agent, and Customer Service Representative...',
'3075',
10,
'Company Agent is acting on behalf of the company with customers (Sales Representative, Customer Service ...) or vendors (Purchasing Agent ...).  It could be an employee or external party.',
'Representative',
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
where not exists (select 1 from AD_Column where ColumnName = 'SalesRep_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'SalesRep_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User - SalesRep'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'T_Replenish'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Company Agent like Sales Representative, Purchase Agent, and Customer Service Representative...', entitytype = '3075', fieldlength = 10, help = 'Company Agent is acting on behalf of the company with customers (Sales Representative, Customer Service ...) or vendors (Purchasing Agent ...).  It could be an employee or external party.', name = 'Representative', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'SalesRep_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='SalesRep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish')), 'fr_FR', 'Y', 'Representative'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='SalesRep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Representative' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='SalesRep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='SalesRep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish')), 'nl_NL', 'Y', 'Verkoper'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='SalesRep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Verkoper' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='SalesRep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'T_Replenish')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'RV_T_Replenish'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Tenant',
'@#AD_Client_ID@',
'',
'Identifies the Client/Tenant for this installation.',
'3075',
0,
'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',
5,
'',
'',
'',
'Y',
'Y',
'Y',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'AD_Client_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'RV_T_Replenish'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Tenant', defaultvalue = '@#AD_Client_ID@', defaultvalue2 = '', description = 'Identifies the Client/Tenant for this installation.', entitytype = '3075', fieldlength = 0, help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', seqno = 5, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'AD_Client_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')), 'fr_FR', 'Y', 'Société','Nom de l''entreprise titulaire de la base de données (DB)',''
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Société',Description = 'Nom de l''entreprise titulaire de la base de données (DB)',Help = '' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')), 'nl_NL', 'Y', 'Client','Client voor deze installatie.','Een client is een bedrijf of een rechtspersoon.'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Client',Description = 'Client voor deze installatie.',Help = 'Een client is een bedrijf of een rechtspersoon.' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'M_Warehouse_ID',(select AD_Element_ID from AD_Element where ColumnName = 'M_Warehouse_ID'),
(select AD_Process_ID from AD_Process where Value = 'RV_T_Replenish'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'WareHouse',
'',
'',
'',
'3075',
0,
'',
10,
'',
'',
'',
'Y',
'N',
'N',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'M_Warehouse_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'M_Warehouse_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'RV_T_Replenish'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'WareHouse', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = '3075', fieldlength = 0, help = '', seqno = 10, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'N', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'M_Warehouse_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_Warehouse_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')), 'fr_FR', 'Y', 'Magasin / dépôt','',''
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_Warehouse_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Magasin / dépôt',Description = '',Help = '' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_Warehouse_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_Warehouse_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')), 'nl_NL', 'Y', 'WareHouse','',''
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_Warehouse_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'WareHouse',Description = '',Help = '' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_Warehouse_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'Z_S_S_S_Famille_ID',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'RV_T_Replenish'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'Sous sous sous Famille (Sous sous Famille)'),
'Sous sous sous famille',
'',
'',
'',
'3075',
0,
'',
28,
'',
'',
'',
'Y',
'Y',
'N',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'Z_S_S_S_Famille_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'RV_T_Replenish'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'Sous sous sous Famille (Sous sous Famille)'), name = 'Sous sous sous famille', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = '3075', fieldlength = 0, help = '', seqno = 28, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'Z_S_S_S_Famille_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_S_S_S_Famille_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')), 'fr_FR', 'Y', 'Sous sous sous famille','',''
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_S_S_S_Famille_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sous sous sous famille',Description = '',Help = '' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_S_S_S_Famille_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_S_S_S_Famille_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')), 'nl_NL', 'Y', 'Sous sous sous famille','',''
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_S_S_S_Famille_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sous sous sous famille',Description = '',Help = '' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_S_S_S_Famille_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'M_Product_Category_ID',(select AD_Element_ID from AD_Element where ColumnName = 'M_Product_Category_ID'),
(select AD_Process_ID from AD_Process where Value = 'RV_T_Replenish'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Product Category',
'',
'',
'Category of a Product',
'3075',
0,
'Identifies the category which this product belongs to.  Product categories are used for pricing and selection.',
22,
'',
'',
'',
'Y',
'Y',
'N',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'M_Product_Category_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'M_Product_Category_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'RV_T_Replenish'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Product Category', defaultvalue = '', defaultvalue2 = '', description = 'Category of a Product', entitytype = '3075', fieldlength = 0, help = 'Identifies the category which this product belongs to.  Product categories are used for pricing and selection.', seqno = 22, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'M_Product_Category_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_Product_Category_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')), 'fr_FR', 'Y', 'Catégorie article','Catégorie à laquelle appartient l''article.','Catégorie à laquelle appartient l''article. La catégorie article est utilisée pour définir les prix et les coûts.'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_Product_Category_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Catégorie article',Description = 'Catégorie à laquelle appartient l''article.',Help = 'Catégorie à laquelle appartient l''article. La catégorie article est utilisée pour définir les prix et les coûts.' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_Product_Category_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_Product_Category_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')), 'nl_NL', 'Y', 'Product Categorie','De categorie waartoe dit product behoort.','Geeft aan tot welke categorie een product hoort. Product categorieën worden gebruikt voor het prijzen van producten.'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_Product_Category_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Product Categorie',Description = 'De categorie waartoe dit product behoort.',Help = 'Geeft aan tot welke categorie een product hoort. Product categorieën worden gebruikt voor het prijzen van producten.' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_Product_Category_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'Z_S_Famille_ID',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'RV_T_Replenish'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'Sous Famille (Famille)'),
'Sous Famille',
'',
'',
'Sous familles',
'3075',
0,
'',
24,
'',
'',
'',
'Y',
'Y',
'N',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'Z_S_Famille_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'RV_T_Replenish'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'Sous Famille (Famille)'), name = 'Sous Famille', defaultvalue = '', defaultvalue2 = '', description = 'Sous familles', entitytype = '3075', fieldlength = 0, help = '', seqno = 24, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'Z_S_Famille_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_S_Famille_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')), 'fr_FR', 'Y', 'Sous Famille','Sous familles',''
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_S_Famille_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sous Famille',Description = 'Sous familles',Help = '' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_S_Famille_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_S_Famille_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')), 'nl_NL', 'Y', 'Sous Famille','Sous familles',''
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_S_Famille_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sous Famille',Description = 'Sous familles',Help = '' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_S_Famille_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'Z_S_S_Famille_ID',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'RV_T_Replenish'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'Sous sous Famille (Sous Famille)'),
'Sous sous famille',
'',
'',
'',
'3075',
0,
'',
26,
'',
'',
'',
'Y',
'Y',
'N',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'Z_S_S_Famille_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'RV_T_Replenish'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'Sous sous Famille (Sous Famille)'), name = 'Sous sous famille', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = '3075', fieldlength = 0, help = '', seqno = 26, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'Z_S_S_Famille_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_S_S_Famille_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')), 'fr_FR', 'Y', 'Sous sous famille','',''
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_S_S_Famille_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sous sous famille',Description = '',Help = '' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_S_S_Famille_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_S_S_Famille_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')), 'nl_NL', 'Y', 'Sous sous famille','',''
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_S_S_Famille_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sous sous famille',Description = '',Help = '' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_S_S_Famille_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'SalesRep_ID',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'RV_T_Replenish'),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User - SalesRep'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Representative',
'@#AD_User_ID@',
'',
'Company Agent like Sales Representative, Purchase Agent, and Customer Service Representative...',
'3075',
0,
'Company Agent is acting on behalf of the company with customers (Sales Representative, Customer Service ...) or vendors (Purchasing Agent ...).  It could be an employee or external party.',
60,
'',
'',
'',
'Y',
'Y',
'Y',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'SalesRep_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'RV_T_Replenish'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User - SalesRep'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Representative', defaultvalue = '@#AD_User_ID@', defaultvalue2 = '', description = 'Company Agent like Sales Representative, Purchase Agent, and Customer Service Representative...', entitytype = '3075', fieldlength = 0, help = 'Company Agent is acting on behalf of the company with customers (Sales Representative, Customer Service ...) or vendors (Purchasing Agent ...).  It could be an employee or external party.', seqno = 60, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'SalesRep_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='SalesRep_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')), 'fr_FR', 'Y', 'Representative','Company Agent like Sales Representative, Purchase Agent, and Customer Service Representative...','Company Agent is acting on behalf of the company with customers (Sales Representative, Customer Service ...) or vendors (Purchasing Agent ...).  It could be an employee or external party.'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='SalesRep_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Representative',Description = 'Company Agent like Sales Representative, Purchase Agent, and Customer Service Representative...',Help = 'Company Agent is acting on behalf of the company with customers (Sales Representative, Customer Service ...) or vendors (Purchasing Agent ...).  It could be an employee or external party.' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='SalesRep_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='SalesRep_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')), 'nl_NL', 'Y', 'Verkoper','Verkoper of vertegenwoordiger','De verkoper geeft aan welke gebruiker binnen het systeem hier verkoper is.'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='SalesRep_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Verkoper',Description = 'Verkoper of vertegenwoordiger',Help = 'De verkoper geeft aan welke gebruiker binnen het systeem hier verkoper is.' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='SalesRep_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_T_Replenish')) and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '3075 - Automatisation du process de réappro', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '3075' ;
UPDATE AD_PROCESS_PARA set ISACTIVE = 'N' WHERE AD_PROCESS_PARA_ID = 135;
