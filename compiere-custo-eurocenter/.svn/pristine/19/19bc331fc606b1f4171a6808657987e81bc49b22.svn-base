insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EC03','EC003 - Import des Articles',
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
where not exists (select 1 from AD_EntityType where EntityType = 'EC03' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC003 - Import des Articles', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC03' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Name_AttributeSet','',
'EC03',
'',
'Nom de la collection',
'',
'',
'',
'',
'Nom de la collection',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Name_AttributeSet' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC03', help = '', name = 'Nom de la collection', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Nom de la collection', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Name_AttributeSet' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Name_AttributeSet'), 'nl_BE', 'Y', '','','Nom de la collection','','','','','Nom de la collection'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Name_AttributeSet') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nom de la collection',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Nom de la collection' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Name_AttributeSet') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Name_AttributeSet'), 'fr_FR', 'Y', '','','Nom de la collection','','','','','Nom de la collection'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Name_AttributeSet') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nom de la collection',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Nom de la collection' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Name_AttributeSet') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Z_ProductTaxAuvibel','',
'EC03',
'',
'Tax Auvibel prix',
'',
'',
'',
'',
'Tax Auvibel prix',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Z_ProductTaxAuvibel' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC03', help = '', name = 'Tax Auvibel prix', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Tax Auvibel prix', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Z_ProductTaxAuvibel' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_ProductTaxAuvibel'), 'nl_BE', 'Y', '','','Tax Auvibel prix','','','','','Tax Auvibel prix'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_ProductTaxAuvibel') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Tax Auvibel prix',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Tax Auvibel prix' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_ProductTaxAuvibel') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_ProductTaxAuvibel'), 'fr_FR', 'Y', '','','Tax Auvibel prix','','','','','Tax Auvibel prix'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_ProductTaxAuvibel') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Tax Auvibel prix',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Tax Auvibel prix' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_ProductTaxAuvibel') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Value_Z_S_S_S_Famille','',
'EC03',
'',
'Value de la SSS famille',
'',
'',
'',
'',
'Value de la SSS famille',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Value_Z_S_S_S_Famille' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC03', help = '', name = 'Value de la SSS famille', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Value de la SSS famille', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Value_Z_S_S_S_Famille' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Value_Z_S_S_S_Famille'), 'nl_BE', 'Y', '','','Value de la SSS famille','','','','','Value de la SSS famille'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_Z_S_S_S_Famille') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Value de la SSS famille',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Value de la SSS famille' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_Z_S_S_S_Famille') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Value_Z_S_S_S_Famille'), 'fr_FR', 'Y', '','','Value de la SSS famille','','','','','Value de la SSS famille'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_Z_S_S_S_Famille') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Value de la SSS famille',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Value de la SSS famille' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_Z_S_S_S_Famille') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Name_TaxCategory','',
'EC03',
'',
'Nom catégorie TVA',
'',
'',
'',
'',
'Nom catégorie TVA',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Name_TaxCategory' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC03', help = '', name = 'Nom catégorie TVA', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Nom catégorie TVA', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Name_TaxCategory' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Name_TaxCategory'), 'nl_BE', 'Y', '','','Nom catégorie TVA','','','','','Nom catégorie TVA'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Name_TaxCategory') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nom catégorie TVA',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Nom catégorie TVA' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Name_TaxCategory') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Name_TaxCategory'), 'fr_FR', 'Y', '','','Nom catégorie TVA','','','','','Nom catégorie TVA'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Name_TaxCategory') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nom catégorie TVA',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Nom catégorie TVA' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Name_TaxCategory') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Attributs','',
'EC03',
'',
'Les Attributs',
'',
'',
'',
'',
'Les Attributs',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Attributs' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC03', help = '', name = 'Les Attributs', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Les Attributs', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Attributs' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Attributs'), 'nl_BE', 'Y', '','','Les Attributs','','','','','Les Attributs'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Attributs') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Les Attributs',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Les Attributs' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Attributs') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Attributs'), 'fr_FR', 'Y', '','','Les Attributs','','','','','Les Attributs'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Attributs') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Les Attributs',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Les Attributs' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Attributs') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Value_Y_Marque','',
'EC03',
'',
'Value de la marque',
'',
'',
'',
'',
'Value de la marque',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Value_Y_Marque' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC03', help = '', name = 'Value de la marque', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Value de la marque', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Value_Y_Marque' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Value_Y_Marque'), 'nl_BE', 'Y', '','','Value de la marque','','','','','Value de la marque'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_Y_Marque') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Value de la marque',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Value de la marque' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_Y_Marque') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Value_Y_Marque'), 'fr_FR', 'Y', '','','Value de la marque','','','','','Value de la marque'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_Y_Marque') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Value de la marque',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Value de la marque' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_Y_Marque') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Value_Y_Gamme','',
'EC03',
'',
'Value de la Gamme',
'',
'',
'',
'',
'Value de la Gamme',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Value_Y_Gamme' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC03', help = '', name = 'Value de la Gamme', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Value de la Gamme', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Value_Y_Gamme' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Value_Y_Gamme'), 'nl_BE', 'Y', '','','Value de la Gamme','','','','','Value de la Gamme'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_Y_Gamme') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Value de la Gamme',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Value de la Gamme' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_Y_Gamme') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Value_Y_Gamme'), 'fr_FR', 'Y', '','','Value de la Gamme','','','','','Value de la Gamme'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_Y_Gamme') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Value de la Gamme',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Value de la Gamme' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_Y_Gamme') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Value_Z_S_Famille','',
'EC03',
'',
'Value de la Sous fam.',
'',
'',
'',
'',
'Value de la Sous fam.',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Value_Z_S_Famille' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC03', help = '', name = 'Value de la Sous fam.', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Value de la Sous fam.', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Value_Z_S_Famille' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Value_Z_S_Famille'), 'nl_BE', 'Y', '','','Value de la Sous fam.','','','','','Value de la Sous fam.'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_Z_S_Famille') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Value de la Sous fam.',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Value de la Sous fam.' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_Z_S_Famille') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Value_Z_S_Famille'), 'fr_FR', 'Y', '','','Value de la Sous fam.','','','','','Value de la Sous fam.'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_Z_S_Famille') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Value de la Sous fam.',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Value de la Sous fam.' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_Z_S_Famille') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Value_Z_S_S_Famille','',
'EC03',
'',
'Value de la SS famille',
'',
'',
'',
'',
'Value de la SS famille',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Value_Z_S_S_Famille' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC03', help = '', name = 'Value de la SS famille', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Value de la SS famille', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Value_Z_S_S_Famille' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Value_Z_S_S_Famille'), 'nl_BE', 'Y', '','','Value de la SS famille','','','','','Value de la SS famille'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_Z_S_S_Famille') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Value de la SS famille',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Value de la SS famille' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_Z_S_S_Famille') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Value_Z_S_S_Famille'), 'fr_FR', 'Y', '','','Value de la SS famille','','','','','Value de la SS famille'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_Z_S_S_Famille') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Value de la SS famille',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Value de la SS famille' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_Z_S_S_Famille') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Z_ProductTaxRecupel','',
'EC03',
'',
'Tax Récupel prix',
'',
'',
'',
'',
'Tax Récupel prix',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Z_ProductTaxRecupel' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC03', help = '', name = 'Tax Récupel prix', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Tax Récupel prix', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Z_ProductTaxRecupel' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_ProductTaxRecupel'), 'nl_BE', 'Y', '','','Tax Récupel prix','','','','','Tax Récupel prix'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_ProductTaxRecupel') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Tax Récupel prix',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Tax Récupel prix' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_ProductTaxRecupel') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_ProductTaxRecupel'), 'fr_FR', 'Y', '','','Tax Récupel prix','','','','','Tax Récupel prix'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_ProductTaxRecupel') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Tax Récupel prix',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Tax Récupel prix' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_ProductTaxRecupel') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Z_ProductTaxBebat','',
'EC03',
'',
'Tax Bebat prix',
'',
'',
'',
'',
'Tax Bebat prix',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Z_ProductTaxBebat' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC03', help = '', name = 'Tax Bebat prix', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Tax Bebat prix', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Z_ProductTaxBebat' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_ProductTaxBebat'), 'nl_BE', 'Y', '','','Tax Bebat prix','','','','','Tax Bebat prix'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_ProductTaxBebat') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Tax Bebat prix',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Tax Bebat prix' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_ProductTaxBebat') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_ProductTaxBebat'), 'fr_FR', 'Y', '','','Tax Bebat prix','','','','','Tax Bebat prix'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_ProductTaxBebat') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Tax Bebat prix',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Tax Bebat prix' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_ProductTaxBebat') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Value_Y_Marque',(select AD_Element_ID from AD_Element where ColumnName = 'Value_Y_Marque'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Product'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC03',
10,
'',
'Value de la marque',
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
where not exists (select 1 from AD_Column where ColumnName = 'Value_Y_Marque'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Value_Y_Marque'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Product'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC03', fieldlength = 10, help = '', name = 'Value de la marque', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Value_Y_Marque'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Value_Y_Marque' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'nl_BE', 'Y', 'Value de la marque'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_Y_Marque' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Value de la marque' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_Y_Marque' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Value_Y_Marque' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'fr_FR', 'Y', 'Value de la marque'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_Y_Marque' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Value de la marque' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_Y_Marque' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Value_Y_Gamme',(select AD_Element_ID from AD_Element where ColumnName = 'Value_Y_Gamme'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Product'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC03',
10,
'',
'Value de la Gamme',
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
where not exists (select 1 from AD_Column where ColumnName = 'Value_Y_Gamme'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Value_Y_Gamme'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Product'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC03', fieldlength = 10, help = '', name = 'Value de la Gamme', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Value_Y_Gamme'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Value_Y_Gamme' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'nl_BE', 'Y', 'Value de la Gamme'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_Y_Gamme' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Value de la Gamme' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_Y_Gamme' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Value_Y_Gamme' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'fr_FR', 'Y', 'Value de la Gamme'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_Y_Gamme' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Value de la Gamme' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_Y_Gamme' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Value_Z_S_S_Famille',(select AD_Element_ID from AD_Element where ColumnName = 'Value_Z_S_S_Famille'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Product'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC03',
10,
'',
'Value de la SS famille',
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
where not exists (select 1 from AD_Column where ColumnName = 'Value_Z_S_S_Famille'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Value_Z_S_S_Famille'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Product'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC03', fieldlength = 10, help = '', name = 'Value de la SS famille', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Value_Z_S_S_Famille'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Value_Z_S_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'nl_BE', 'Y', 'Value de la SS famille'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_Z_S_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Value de la SS famille' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_Z_S_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Value_Z_S_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'fr_FR', 'Y', 'Value de la SS famille'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_Z_S_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Value de la SS famille' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_Z_S_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Value_Z_S_S_S_Famille',(select AD_Element_ID from AD_Element where ColumnName = 'Value_Z_S_S_S_Famille'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Product'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC03',
10,
'',
'Value de la SSS famille',
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
where not exists (select 1 from AD_Column where ColumnName = 'Value_Z_S_S_S_Famille'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Value_Z_S_S_S_Famille'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Product'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC03', fieldlength = 10, help = '', name = 'Value de la SSS famille', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Value_Z_S_S_S_Famille'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Value_Z_S_S_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'nl_BE', 'Y', 'Value de la SSS famille'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_Z_S_S_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Value de la SSS famille' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_Z_S_S_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Value_Z_S_S_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'fr_FR', 'Y', 'Value de la SSS famille'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_Z_S_S_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Value de la SSS famille' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_Z_S_S_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Name_TaxCategory',(select AD_Element_ID from AD_Element where ColumnName = 'Name_TaxCategory'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Product'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC03',
50,
'',
'Nom catégorie TVA',
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
where not exists (select 1 from AD_Column where ColumnName = 'Name_TaxCategory'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Name_TaxCategory'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Product'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC03', fieldlength = 50, help = '', name = 'Nom catégorie TVA', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Name_TaxCategory'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Name_TaxCategory' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'nl_BE', 'Y', 'Nom catégorie TVA'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name_TaxCategory' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Nom catégorie TVA' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name_TaxCategory' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Name_TaxCategory' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'fr_FR', 'Y', 'Nom catégorie TVA'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name_TaxCategory' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Nom catégorie TVA' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name_TaxCategory' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_ProductTaxRecupel',(select AD_Element_ID from AD_Element where ColumnName = 'Z_ProductTaxRecupel'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Costs+Prices'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Product'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC03',
22,
'',
'Tax Récupel prix',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_ProductTaxRecupel'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_ProductTaxRecupel'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Costs+Prices'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Product'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC03', fieldlength = 22, help = '', name = 'Tax Récupel prix', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_ProductTaxRecupel'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_ProductTaxRecupel' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'nl_BE', 'Y', 'Tax Récupel prix'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ProductTaxRecupel' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tax Récupel prix' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ProductTaxRecupel' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_ProductTaxRecupel' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'fr_FR', 'Y', 'Tax Récupel prix'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ProductTaxRecupel' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tax Récupel prix' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ProductTaxRecupel' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_ProductTaxBebat',(select AD_Element_ID from AD_Element where ColumnName = 'Z_ProductTaxBebat'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Costs+Prices'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Product'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC03',
22,
'',
'Tax Bebat prix',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_ProductTaxBebat'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_ProductTaxBebat'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Costs+Prices'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Product'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC03', fieldlength = 22, help = '', name = 'Tax Bebat prix', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_ProductTaxBebat'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_ProductTaxBebat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'nl_BE', 'Y', 'Tax Bebat prix'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ProductTaxBebat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tax Bebat prix' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ProductTaxBebat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_ProductTaxBebat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'fr_FR', 'Y', 'Tax Bebat prix'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ProductTaxBebat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tax Bebat prix' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ProductTaxBebat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_S_Famille_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Z_S_Famille_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Product'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Sous familles',
'EC03',
22,
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_S_Famille_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_S_Famille_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Product'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Sous familles', entitytype = 'EC03', fieldlength = 22, help = '', name = 'Sous Famille', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_S_Famille_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'nl_BE', 'Y', 'Sous Famille'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sous Famille' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'fr_FR', 'Y', 'Sous Famille'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sous Famille' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Y_Marque_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Y_Marque_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Product'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC03',
22,
'',
'Marque',
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
where not exists (select 1 from AD_Column where ColumnName = 'Y_Marque_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Y_Marque_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Product'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC03', fieldlength = 22, help = '', name = 'Marque', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Y_Marque_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'nl_BE', 'Y', 'Marque'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Marque' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'fr_FR', 'Y', 'Marque'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Marque' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_TaxCategory_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_TaxCategory_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Product'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Tax Category',
'EC03',
22,
'The Tax Category provides a method of grouping similar taxes.  For example, Sales Tax or Value Added Tax.',
'Tax Category',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_TaxCategory_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_TaxCategory_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Product'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Tax Category', entitytype = 'EC03', fieldlength = 22, help = 'The Tax Category provides a method of grouping similar taxes.  For example, Sales Tax or Value Added Tax.', name = 'Tax Category', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_TaxCategory_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_TaxCategory_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'nl_BE', 'Y', 'Tax Category'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_TaxCategory_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tax Category' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_TaxCategory_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_TaxCategory_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'fr_FR', 'Y', 'Catégorie TVA'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_TaxCategory_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Catégorie TVA' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_TaxCategory_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'M_AttributeSet_ID',(select AD_Element_ID from AD_Element where ColumnName = 'M_AttributeSet_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Product'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Product Attribute Set',
'EC03',
22,
'Define Product Attribute Sets to add additional attributes and values to the product. You need to define an Attribute Set if you want to enable Serial and Lot Number tracking.',
'Attribute Set',
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
where not exists (select 1 from AD_Column where ColumnName = 'M_AttributeSet_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'M_AttributeSet_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Product'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Product Attribute Set', entitytype = 'EC03', fieldlength = 22, help = 'Define Product Attribute Sets to add additional attributes and values to the product. You need to define an Attribute Set if you want to enable Serial and Lot Number tracking.', name = 'Attribute Set', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'M_AttributeSet_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_AttributeSet_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'nl_BE', 'Y', 'Attribute Set'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_AttributeSet_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Attribute Set' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_AttributeSet_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_AttributeSet_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'fr_FR', 'Y', 'Collection d''attribut'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_AttributeSet_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Collection d''attribut' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_AttributeSet_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Value_Z_S_Famille',(select AD_Element_ID from AD_Element where ColumnName = 'Value_Z_S_Famille'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Product'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC03',
10,
'',
'Value de la Sous fam.',
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
where not exists (select 1 from AD_Column where ColumnName = 'Value_Z_S_Famille'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Value_Z_S_Famille'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Product'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC03', fieldlength = 10, help = '', name = 'Value de la Sous fam.', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Value_Z_S_Famille'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Value_Z_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'nl_BE', 'Y', 'Value de la Sous fam.'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_Z_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Value de la Sous fam.' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_Z_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Value_Z_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'fr_FR', 'Y', 'Value de la Sous fam.'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_Z_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Value de la Sous fam.' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_Z_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Value',(select AD_Element_ID from AD_Element where ColumnName = 'Value'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'M_AttributeSet'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Search key for the record in the format required - must be unique',
'EC03',
50,
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
where not exists (select 1 from AD_Column where ColumnName = 'Value'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_AttributeSet'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Value'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'M_AttributeSet'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Search key for the record in the format required - must be unique', entitytype = 'EC03', fieldlength = 50, help = 'A search key allows you a fast method of finding a particular record. If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', name = 'Search Key', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'Y', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Value'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_AttributeSet');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_AttributeSet')), 'nl_BE', 'Y', 'Search Key'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_AttributeSet')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Search Key' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_AttributeSet')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_AttributeSet')), 'fr_FR', 'Y', 'Clé de recherche'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_AttributeSet')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Clé de recherche' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_AttributeSet')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Value',(select AD_Element_ID from AD_Element where ColumnName = 'Value'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'M_Attribute'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Search key for the record in the format required - must be unique',
'EC03',
50,
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
'N',
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
where not exists (select 1 from AD_Column where ColumnName = 'Value'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Attribute'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Value'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'M_Attribute'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Search key for the record in the format required - must be unique', entitytype = 'EC03', fieldlength = 50, help = 'A search key allows you a fast method of finding a particular record. If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', name = 'Search Key', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'Y', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Value'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Attribute');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Attribute')), 'nl_BE', 'Y', 'Search Key'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Attribute')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Search Key' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Attribute')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Attribute')), 'fr_FR', 'Y', 'Clé de recherche'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Attribute')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Clé de recherche' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Attribute')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'M_AttributeSetInstance_ID',(select AD_Element_ID from AD_Element where ColumnName = 'M_AttributeSetInstance_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Product Attribute'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Product'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Product Attribute Set Instance',
'EC03',
22,
'Identifies the values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.',
'Attribute Set Instance',
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
where not exists (select 1 from AD_Column where ColumnName = 'M_AttributeSetInstance_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'M_AttributeSetInstance_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Product Attribute'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Product'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Product Attribute Set Instance', entitytype = 'EC03', fieldlength = 22, help = 'Identifies the values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.', name = 'Attribute Set Instance', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'M_AttributeSetInstance_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_AttributeSetInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'nl_BE', 'Y', 'Attribute Set Instance'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_AttributeSetInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Attribute Set Instance' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_AttributeSetInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_AttributeSetInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'fr_FR', 'Y', 'Instance collection d''attribut'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_AttributeSetInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Instance collection d''attribut' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_AttributeSetInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Name_AttributeSet',(select AD_Element_ID from AD_Element where ColumnName = 'Name_AttributeSet'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Product'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC03',
50,
'',
'Nom de la collection',
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
where not exists (select 1 from AD_Column where ColumnName = 'Name_AttributeSet'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Name_AttributeSet'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Product'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC03', fieldlength = 50, help = '', name = 'Nom de la collection', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Name_AttributeSet'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Name_AttributeSet' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'nl_BE', 'Y', 'Nom de la collection'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name_AttributeSet' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Nom de la collection' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name_AttributeSet' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Name_AttributeSet' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'fr_FR', 'Y', 'Nom de la collection'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name_AttributeSet' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Nom de la collection' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name_AttributeSet' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_PackageWeight',(select AD_Element_ID from AD_Element where ColumnName = 'Z_PackageWeight'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Number'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Product'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Poids emballage',
'EC03',
22,
'',
'Poids emballage',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_PackageWeight'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_PackageWeight'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Number'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Product'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Poids emballage', entitytype = 'EC03', fieldlength = 22, help = '', name = 'Poids emballage', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_PackageWeight'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_PackageWeight' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'nl_BE', 'Y', 'Poids emballage'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_PackageWeight' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Poids emballage' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_PackageWeight' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_PackageWeight' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'fr_FR', 'Y', 'Poids emballage'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_PackageWeight' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Poids emballage' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_PackageWeight' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_ProductTaxAuvibel',(select AD_Element_ID from AD_Element where ColumnName = 'Z_ProductTaxAuvibel'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Costs+Prices'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Product'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC03',
22,
'',
'Tax Auvibel prix',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_ProductTaxAuvibel'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_ProductTaxAuvibel'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Costs+Prices'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Product'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC03', fieldlength = 22, help = '', name = 'Tax Auvibel prix', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_ProductTaxAuvibel'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_ProductTaxAuvibel' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'nl_BE', 'Y', 'Tax Auvibel prix'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ProductTaxAuvibel' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tax Auvibel prix' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ProductTaxAuvibel' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_ProductTaxAuvibel' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'fr_FR', 'Y', 'Tax Auvibel prix'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ProductTaxAuvibel' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tax Auvibel prix' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ProductTaxAuvibel' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_S_S_Famille_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Z_S_S_Famille_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Product'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC03',
22,
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_S_S_Famille_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_S_S_Famille_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Product'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC03', fieldlength = 22, help = '', name = 'Sous sous famille', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_S_S_Famille_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'nl_BE', 'Y', 'Sous sous famille'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sous sous famille' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'fr_FR', 'Y', 'Sous sous famille'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sous sous famille' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_S_S_S_Famille_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Z_S_S_S_Famille_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Product'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC03',
22,
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_S_S_S_Famille_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_S_S_S_Famille_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Product'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC03', fieldlength = 22, help = '', name = 'Sous sous sous famille', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_S_S_S_Famille_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_S_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'nl_BE', 'Y', 'Sous sous sous famille'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sous sous sous famille' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_S_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'fr_FR', 'Y', 'Sous sous sous famille'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sous sous sous famille' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_Gamme_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Z_Gamme_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Product'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Gammes articles',
'EC03',
22,
'',
'Gamme',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_Gamme_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_Gamme_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Product'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Gammes articles', entitytype = 'EC03', fieldlength = 22, help = '', name = 'Gamme', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_Gamme_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_Gamme_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'nl_BE', 'Y', 'Gamme'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_Gamme_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Gamme' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_Gamme_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_Gamme_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'fr_FR', 'Y', 'Gamme'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_Gamme_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Gamme' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_Gamme_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Attributs',(select AD_Element_ID from AD_Element where ColumnName = 'Attributs'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Product'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC03',
400,
'',
'Les Attributs',
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
where not exists (select 1 from AD_Column where ColumnName = 'Attributs'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Attributs'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Product'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC03', fieldlength = 400, help = '', name = 'Les Attributs', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Attributs'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Attributs' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'nl_BE', 'Y', 'Les Attributs'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Attributs' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Les Attributs' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Attributs' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Attributs' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'fr_FR', 'Y', 'Les Attributs'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Attributs' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Les Attributs' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Attributs' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Attribute')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Attribute_462' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Attribute_260')),
'Search Key',
'Search key for the record in the format required - must be unique',
14,
'',
'EC03',
'A search key allows you a fast method of finding a particular record. If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',
'',
25,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Attribute'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Attribute_462' and ad_window_id in (select ad_window_id from ad_window where value = 'Attribute_260')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Attribute_462' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Attribute_260')), name = 'Search Key', description = 'Search key for the record in the format required - must be unique', displaylength = 14, displaylogic = '', entitytype = 'EC03', help = 'A search key allows you a fast method of finding a particular record. If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', obscuretype = '', seqno = 25, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Attribute'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Attribute_462' and ad_window_id in (select ad_window_id from ad_window where value = 'Attribute_260'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Attribute')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Attribute_462' and ad_window_id in (select ad_window_id from ad_window where value = 'Attribute_260'))), 'nl_BE', 'Y', 'Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record. If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Search Key'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Attribute')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Attribute_462' and ad_window_id in (select ad_window_id from ad_window where value = 'Attribute_260'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Search key for the record in the format required - must be unique',Help = 'A search key allows you a fast method of finding a particular record. If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',Name = 'Search Key' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Attribute')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Attribute_462' and ad_window_id in (select ad_window_id from ad_window where value = 'Attribute_260'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Attribute')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Attribute_462' and ad_window_id in (select ad_window_id from ad_window where value = 'Attribute_260'))), 'fr_FR', 'Y', 'Clé de recherche - doit être unique','Permet une recherche plus rapide des enregistrements. . Si vous laissez ce champ à blanc, le système créée automatiquement un nombre, dont la séquence est déterminée au niveau du paramétrage des documents (maintenance des séquences).','Clé de recherche'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Attribute')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Attribute_462' and ad_window_id in (select ad_window_id from ad_window where value = 'Attribute_260'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Clé de recherche - doit être unique',Help = 'Permet une recherche plus rapide des enregistrements. . Si vous laissez ce champ à blanc, le système créée automatiquement un nombre, dont la séquence est déterminée au niveau du paramétrage des documents (maintenance des séquences).',Name = 'Clé de recherche' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Attribute')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Attribute_462' and ad_window_id in (select ad_window_id from ad_window where value = 'Attribute_260'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_Gamme_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')),
'Gamme',
'Gammes articles',
22,
'',
'EC03',
'',
'',
560,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_Gamme_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')), name = 'Gamme', description = 'Gammes articles', displaylength = 22, displaylogic = '', entitytype = 'EC03', help = '', obscuretype = '', seqno = 560, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_Gamme_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Gamme_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'nl_BE', 'Y', 'Gammes articles','','Gamme'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Gamme_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Gammes articles',Help = '',Name = 'Gamme' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Gamme_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Gamme_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'fr_FR', 'Y', 'Gammes articles','','Gamme'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Gamme_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Gammes articles',Help = '',Name = 'Gamme' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Gamme_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')),
'Marque',
'',
22,
'',
'EC03',
'',
'',
580,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')), name = 'Marque', description = '', displaylength = 22, displaylogic = '', entitytype = 'EC03', help = '', obscuretype = '', seqno = 580, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'nl_BE', 'Y', '','','Marque'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Marque' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'fr_FR', 'Y', '','','Marque'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Marque' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')),
'Sous Famille',
'Sous familles',
22,
'',
'EC03',
'',
'',
600,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')), name = 'Sous Famille', description = 'Sous familles', displaylength = 22, displaylogic = '', entitytype = 'EC03', help = '', obscuretype = '', seqno = 600, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'nl_BE', 'Y', 'Sous familles','','Sous Famille'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Sous familles',Help = '',Name = 'Sous Famille' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'fr_FR', 'Y', 'Sous familles','','Sous Famille'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Sous familles',Help = '',Name = 'Sous Famille' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')),
'Sous sous famille',
'',
22,
'',
'EC03',
'',
'',
620,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')), name = 'Sous sous famille', description = '', displaylength = 22, displaylogic = '', entitytype = 'EC03', help = '', obscuretype = '', seqno = 620, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'nl_BE', 'Y', '','','Sous sous famille'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sous sous famille' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'fr_FR', 'Y', '','','Sous sous famille'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sous sous famille' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_S_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')),
'Sous sous sous famille',
'',
22,
'',
'EC03',
'',
'',
640,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_S_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')), name = 'Sous sous sous famille', description = '', displaylength = 22, displaylogic = '', entitytype = 'EC03', help = '', obscuretype = '', seqno = 640, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_S_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_S_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'nl_BE', 'Y', '','','Sous sous sous famille'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_S_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sous sous sous famille' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_S_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_S_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'fr_FR', 'Y', '','','Sous sous sous famille'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_S_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sous sous sous famille' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_S_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_TaxCategory_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')),
'Tax Category',
'Tax Category',
22,
'',
'EC03',
'The Tax Category provides a method of grouping similar taxes.  For example, Sales Tax or Value Added Tax.',
'',
540,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_TaxCategory_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')), name = 'Tax Category', description = 'Tax Category', displaylength = 22, displaylogic = '', entitytype = 'EC03', help = 'The Tax Category provides a method of grouping similar taxes.  For example, Sales Tax or Value Added Tax.', obscuretype = '', seqno = 540, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_TaxCategory_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_TaxCategory_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'nl_BE', 'Y', 'Tax Category','The Tax Category provides a method of grouping similar taxes.  For example, Sales Tax or Value Added Tax.','Tax Category'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_TaxCategory_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Tax Category',Help = 'The Tax Category provides a method of grouping similar taxes.  For example, Sales Tax or Value Added Tax.',Name = 'Tax Category' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_TaxCategory_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_TaxCategory_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'fr_FR', 'Y', 'Catégorie TVA','Utilisé pour calculer la TVA.','Catégorie TVA'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_TaxCategory_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Catégorie TVA',Help = 'Utilisé pour calculer la TVA.',Name = 'Catégorie TVA' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_TaxCategory_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_AttributeSet_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')),
'Attribute Set',
'Product Attribute Set',
22,
'',
'EC03',
'Define Product Attribute Sets to add additional attributes and values to the product. You need to define an Attribute Set if you want to enable Serial and Lot Number tracking.',
'',
510,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_AttributeSet_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')), name = 'Attribute Set', description = 'Product Attribute Set', displaylength = 22, displaylogic = '', entitytype = 'EC03', help = 'Define Product Attribute Sets to add additional attributes and values to the product. You need to define an Attribute Set if you want to enable Serial and Lot Number tracking.', obscuretype = '', seqno = 510, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_AttributeSet_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_AttributeSet_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'nl_BE', 'Y', 'Product Attribute Set','Define Product Attribute Sets to add additional attributes and values to the product. You need to define an Attribute Set if you want to enable Serial and Lot Number tracking.','Attribute Set'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_AttributeSet_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Product Attribute Set',Help = 'Define Product Attribute Sets to add additional attributes and values to the product. You need to define an Attribute Set if you want to enable Serial and Lot Number tracking.',Name = 'Attribute Set' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_AttributeSet_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_AttributeSet_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'fr_FR', 'Y', 'Collection d''attribut article','Définir les collections d''attributs articles pour ajouter de nouveaux attributs et valeurs à ces articles. Vous devez définir une collection d''attribut si vous souhaitez ','Collection d''attribut'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_AttributeSet_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Collection d''attribut article',Help = 'Définir les collections d''attributs articles pour ajouter de nouveaux attributs et valeurs à ces articles. Vous devez définir une collection d''attribut si vous souhaitez ',Name = 'Collection d''attribut' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_AttributeSet_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Name_TaxCategory' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')),
'Nom catégorie TVA',
'',
10,
'',
'EC03',
'',
'',
530,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Name_TaxCategory' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')), name = 'Nom catégorie TVA', description = '', displaylength = 10, displaylogic = '', entitytype = 'EC03', help = '', obscuretype = '', seqno = 530, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Name_TaxCategory' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name_TaxCategory' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'nl_BE', 'Y', '','','Nom catégorie TVA'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name_TaxCategory' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nom catégorie TVA' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name_TaxCategory' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name_TaxCategory' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'fr_FR', 'Y', '','','Nom catégorie TVA'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name_TaxCategory' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nom catégorie TVA' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name_TaxCategory' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Name_AttributeSet' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')),
'Nom de la collection',
'',
10,
'',
'EC03',
'',
'',
500,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Name_AttributeSet' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')), name = 'Nom de la collection', description = '', displaylength = 10, displaylogic = '', entitytype = 'EC03', help = '', obscuretype = '', seqno = 500, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Name_AttributeSet' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name_AttributeSet' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'nl_BE', 'Y', '','','Nom de la collection'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name_AttributeSet' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nom de la collection' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name_AttributeSet' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name_AttributeSet' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'fr_FR', 'Y', '','','Nom de la collection'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name_AttributeSet' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nom de la collection' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name_AttributeSet' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_PackageWeight' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')),
'Poids emballage',
'Poids emballage',
22,
'',
'EC03',
'',
'',
650,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_PackageWeight' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')), name = 'Poids emballage', description = 'Poids emballage', displaylength = 22, displaylogic = '', entitytype = 'EC03', help = '', obscuretype = '', seqno = 650, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_PackageWeight' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PackageWeight' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'nl_BE', 'Y', 'Poids emballage','','Poids emballage'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PackageWeight' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Poids emballage',Help = '',Name = 'Poids emballage' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PackageWeight' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PackageWeight' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'fr_FR', 'Y', 'Poids emballage','','Poids emballage'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PackageWeight' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Poids emballage',Help = '',Name = 'Poids emballage' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PackageWeight' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_ProductTaxAuvibel' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')),
'Tax Auvibel prix',
'',
22,
'',
'EC03',
'',
'',
660,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_ProductTaxAuvibel' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')), name = 'Tax Auvibel prix', description = '', displaylength = 22, displaylogic = '', entitytype = 'EC03', help = '', obscuretype = '', seqno = 660, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_ProductTaxAuvibel' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ProductTaxAuvibel' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'nl_BE', 'Y', '','','Tax Auvibel prix'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ProductTaxAuvibel' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Tax Auvibel prix' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ProductTaxAuvibel' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ProductTaxAuvibel' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'fr_FR', 'Y', '','','Tax Auvibel prix'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ProductTaxAuvibel' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Tax Auvibel prix' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ProductTaxAuvibel' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_ProductTaxBebat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')),
'Tax Bebat prix',
'',
22,
'',
'EC03',
'',
'',
670,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_ProductTaxBebat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')), name = 'Tax Bebat prix', description = '', displaylength = 22, displaylogic = '', entitytype = 'EC03', help = '', obscuretype = '', seqno = 670, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_ProductTaxBebat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ProductTaxBebat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'nl_BE', 'Y', '','','Tax Bebat prix'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ProductTaxBebat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Tax Bebat prix' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ProductTaxBebat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ProductTaxBebat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'fr_FR', 'Y', '','','Tax Bebat prix'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ProductTaxBebat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Tax Bebat prix' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ProductTaxBebat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_ProductTaxRecupel' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')),
'Tax Récupel prix',
'',
22,
'',
'EC03',
'',
'',
680,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_ProductTaxRecupel' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')), name = 'Tax Récupel prix', description = '', displaylength = 22, displaylogic = '', entitytype = 'EC03', help = '', obscuretype = '', seqno = 680, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_ProductTaxRecupel' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ProductTaxRecupel' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'nl_BE', 'Y', '','','Tax Récupel prix'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ProductTaxRecupel' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Tax Récupel prix' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ProductTaxRecupel' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ProductTaxRecupel' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'fr_FR', 'Y', '','','Tax Récupel prix'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ProductTaxRecupel' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Tax Récupel prix' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ProductTaxRecupel' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Value_Y_Gamme' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')),
'Value de la Gamme',
'',
10,
'',
'EC03',
'',
'',
550,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Value_Y_Gamme' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')), name = 'Value de la Gamme', description = '', displaylength = 10, displaylogic = '', entitytype = 'EC03', help = '', obscuretype = '', seqno = 550, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Value_Y_Gamme' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Y_Gamme' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'nl_BE', 'Y', '','','Value de la Gamme'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Y_Gamme' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Value de la Gamme' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Y_Gamme' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Y_Gamme' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'fr_FR', 'Y', '','','Value de la Gamme'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Y_Gamme' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Value de la Gamme' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Y_Gamme' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Value_Y_Marque' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')),
'Value de la marque',
'',
10,
'',
'EC03',
'',
'',
570,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Value_Y_Marque' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')), name = 'Value de la marque', description = '', displaylength = 10, displaylogic = '', entitytype = 'EC03', help = '', obscuretype = '', seqno = 570, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Value_Y_Marque' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Y_Marque' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'nl_BE', 'Y', '','','Value de la marque'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Y_Marque' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Value de la marque' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Y_Marque' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Y_Marque' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'fr_FR', 'Y', '','','Value de la marque'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Y_Marque' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Value de la marque' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Y_Marque' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Value_Z_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')),
'Value de la Sous fam.',
'',
10,
'',
'EC03',
'',
'',
590,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Value_Z_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')), name = 'Value de la Sous fam.', description = '', displaylength = 10, displaylogic = '', entitytype = 'EC03', help = '', obscuretype = '', seqno = 590, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Value_Z_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Z_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'nl_BE', 'Y', '','','Value de la Sous fam.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Z_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Value de la Sous fam.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Z_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Z_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'fr_FR', 'Y', '','','Value de la Sous fam.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Z_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Value de la Sous fam.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Z_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Value_Z_S_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')),
'Value de la SS famille',
'',
10,
'',
'EC03',
'',
'',
610,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Value_Z_S_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')), name = 'Value de la SS famille', description = '', displaylength = 10, displaylogic = '', entitytype = 'EC03', help = '', obscuretype = '', seqno = 610, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Value_Z_S_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Z_S_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'nl_BE', 'Y', '','','Value de la SS famille'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Z_S_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Value de la SS famille' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Z_S_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Z_S_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'fr_FR', 'Y', '','','Value de la SS famille'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Z_S_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Value de la SS famille' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Z_S_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Value_Z_S_S_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')),
'Value de la SSS famille',
'',
10,
'',
'EC03',
'',
'',
630,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Value_Z_S_S_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')), name = 'Value de la SSS famille', description = '', displaylength = 10, displaylogic = '', entitytype = 'EC03', help = '', obscuretype = '', seqno = 630, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Value_Z_S_S_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Z_S_S_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'nl_BE', 'Y', '','','Value de la SSS famille'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Z_S_S_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Value de la SSS famille' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Z_S_S_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Z_S_S_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'fr_FR', 'Y', '','','Value de la SSS famille'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Z_S_S_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Value de la SSS famille' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Z_S_S_S_Famille' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_AttributeSet')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Attribute Set_461' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Attribute Set_256')),
'Search Key',
'Search key for the record in the format required - must be unique',
14,
'',
'EC03',
'A search key allows you a fast method of finding a particular record. If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',
'',
25,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_AttributeSet'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Attribute Set_461' and ad_window_id in (select ad_window_id from ad_window where value = 'Attribute Set_256')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Attribute Set_461' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Attribute Set_256')), name = 'Search Key', description = 'Search key for the record in the format required - must be unique', displaylength = 14, displaylogic = '', entitytype = 'EC03', help = 'A search key allows you a fast method of finding a particular record. If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', obscuretype = '', seqno = 25, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_AttributeSet'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Attribute Set_461' and ad_window_id in (select ad_window_id from ad_window where value = 'Attribute Set_256'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_AttributeSet')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Attribute Set_461' and ad_window_id in (select ad_window_id from ad_window where value = 'Attribute Set_256'))), 'nl_BE', 'Y', 'Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record. If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Search Key'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_AttributeSet')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Attribute Set_461' and ad_window_id in (select ad_window_id from ad_window where value = 'Attribute Set_256'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Search key for the record in the format required - must be unique',Help = 'A search key allows you a fast method of finding a particular record. If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',Name = 'Search Key' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_AttributeSet')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Attribute Set_461' and ad_window_id in (select ad_window_id from ad_window where value = 'Attribute Set_256'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_AttributeSet')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Attribute Set_461' and ad_window_id in (select ad_window_id from ad_window where value = 'Attribute Set_256'))), 'fr_FR', 'Y', 'Clé de recherche - doit être unique','Permet une recherche plus rapide des enregistrements. . Si vous laissez ce champ à blanc, le système créée automatiquement un nombre, dont la séquence est déterminée au niveau du paramétrage des documents (maintenance des séquences).','Clé de recherche'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_AttributeSet')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Attribute Set_461' and ad_window_id in (select ad_window_id from ad_window where value = 'Attribute Set_256'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Clé de recherche - doit être unique',Help = 'Permet une recherche plus rapide des enregistrements. . Si vous laissez ce champ à blanc, le système créée automatiquement un nombre, dont la séquence est déterminée au niveau du paramétrage des documents (maintenance des séquences).',Name = 'Clé de recherche' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_AttributeSet')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Attribute Set_461' and ad_window_id in (select ad_window_id from ad_window where value = 'Attribute Set_256'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Attributs' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')),
'Les Attributs',
'',
400,
'',
'EC03',
'',
'',
690,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Attributs' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')), name = 'Les Attributs', description = '', displaylength = 400, displaylogic = '', entitytype = 'EC03', help = '', obscuretype = '', seqno = 690, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Attributs' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Attributs' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'nl_BE', 'Y', '','','Les Attributs'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Attributs' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Les Attributs' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Attributs' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Attributs' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'fr_FR', 'Y', '','','Les Attributs'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Attributs' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Les Attributs' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Attributs' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_AttributeSetInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')),
'Attribute Set Instance',
'Product Attribute Set Instance',
0,
'',
'EC03',
'Identifies the values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.',
'',
520,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_AttributeSetInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')), name = 'Attribute Set Instance', description = 'Product Attribute Set Instance', displaylength = 0, displaylogic = '', entitytype = 'EC03', help = 'Identifies the values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.', obscuretype = '', seqno = 520, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_AttributeSetInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_AttributeSetInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'nl_BE', 'Y', 'Product Attribute Set Instance','Identifies the values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.','Attribute Set Instance'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_AttributeSetInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Product Attribute Set Instance',Help = 'Identifies the values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.',Name = 'Attribute Set Instance' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_AttributeSetInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_AttributeSetInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'fr_FR', 'Y', 'Instance d''une collection d''attribut article','Les valeurs des attributs de l''article','Instance collection d''attribut'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_AttributeSetInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Instance d''une collection d''attribut article',Help = 'Les valeurs des attributs de l''article',Name = 'Instance collection d''attribut' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_AttributeSetInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC003 - Import des Articles', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC03' ;
