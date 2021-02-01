insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'2JC2','2JC2 - 83298:Import Factures Nobilia: Ajout nouvelles colonn',
'#83298 (Entity Type : 2JC2) Import Factures Nobilia: Ajout nouvelles colonnes',
'',
'Y',
'',
'',
'',
'N',
'0',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = '2JC2' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2JC2 - 83298:Import Factures Nobilia: Ajout nouvelles colonn', description = '#83298 (Entity Type : 2JC2) Import Factures Nobilia: Ajout nouvelles colonnes', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2JC2' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsVendorNobilia','',
'2JC2',
'',
'Correspondant Nobilia',
'',
'',
'',
'',
'Correspondant Nobilia',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsVendorNobilia' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2JC2', help = '', name = 'Correspondant Nobilia', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Correspondant Nobilia', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsVendorNobilia' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsVendorNobilia'), 'fr_FR', 'Y', '','','Correspondant Nobilia','','','','','Correspondant Nobilia'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsVendorNobilia') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Correspondant Nobilia',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Correspondant Nobilia' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsVendorNobilia') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsVendorNobilia'), 'nl_NL', 'Y', '','','Correspondant Nobilia','','','','','Correspondant Nobilia'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsVendorNobilia') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Correspondant Nobilia',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Correspondant Nobilia' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsVendorNobilia') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'ZZ_VatNumber','',
'2JC2',
'',
'N° TVA',
'',
'',
'',
'',
'N° TVA',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'ZZ_VatNumber' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2JC2', help = '', name = 'N° TVA', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'N° TVA', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'ZZ_VatNumber' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ZZ_VatNumber'), 'fr_FR', 'Y', '','','N° TVA','','','','','N° TVA'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_VatNumber') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'N° TVA',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'N° TVA' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_VatNumber') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ZZ_VatNumber'), 'nl_NL', 'Y', '','','N° TVA','','','','','N° TVA'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_VatNumber') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'N° TVA',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'N° TVA' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_VatNumber') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'ZZ_NobiliaCreditTerm','',
'2JC2',
'',
'Délai Paiement Nobilia',
'',
'',
'',
'',
'Délai Paiement Nobilia',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'ZZ_NobiliaCreditTerm' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2JC2', help = '', name = 'Délai Paiement Nobilia', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Délai Paiement Nobilia', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'ZZ_NobiliaCreditTerm' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ZZ_NobiliaCreditTerm'), 'fr_FR', 'Y', '','','Délai Paiement Nobilia','','','','','Délai Paiement Nobilia'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_NobiliaCreditTerm') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Délai Paiement Nobilia',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Délai Paiement Nobilia' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_NobiliaCreditTerm') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ZZ_NobiliaCreditTerm'), 'nl_NL', 'Y', '','','Délai Paiement Nobilia','','','','','Délai Paiement Nobilia'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_NobiliaCreditTerm') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Délai Paiement Nobilia',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Délai Paiement Nobilia' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_NobiliaCreditTerm') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'ZZ_OrgLine_ID','',
'2JC2',
'',
'Organisation ligne',
'',
'',
'',
'',
'Organisation ligne',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'ZZ_OrgLine_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2JC2', help = '', name = 'Organisation ligne', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Organisation ligne', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'ZZ_OrgLine_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ZZ_OrgLine_ID'), 'fr_FR', 'Y', '','','Organisation ligne','','','','','Organisation ligne'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_OrgLine_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Organisation ligne',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Organisation ligne' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_OrgLine_ID') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ZZ_OrgLine_ID'), 'nl_NL', 'Y', '','','Organisation ligne','','','','','Organisation ligne'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_OrgLine_ID') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Organisation ligne',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Organisation ligne' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_OrgLine_ID') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'ZZ_ValueNobilia','',
'2JC2',
'',
'Valeur Nobilia',
'',
'',
'',
'',
'Valeur Nobilia',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'ZZ_ValueNobilia' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2JC2', help = '', name = 'Valeur Nobilia', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Valeur Nobilia', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'ZZ_ValueNobilia' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ZZ_ValueNobilia'), 'fr_FR', 'Y', '','','Valeur Nobilia','','','','','Valeur Nobilia'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_ValueNobilia') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Valeur Nobilia',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Valeur Nobilia' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_ValueNobilia') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ZZ_ValueNobilia'), 'nl_NL', 'Y', '','','Valeur Nobilia','','','','','Valeur Nobilia'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_ValueNobilia') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Valeur Nobilia',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Valeur Nobilia' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_ValueNobilia') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'ZZ_NobiliaBuyer','',
'2JC2',
'',
'Nobilia Buyer',
'',
'',
'',
'',
'Nobilia Buyer',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'ZZ_NobiliaBuyer' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2JC2', help = '', name = 'Nobilia Buyer', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Nobilia Buyer', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'ZZ_NobiliaBuyer' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ZZ_NobiliaBuyer'), 'fr_FR', 'Y', '','','Nobilia Buyer','','','','','Nobilia Buyer'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_NobiliaBuyer') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nobilia Buyer',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Nobilia Buyer' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_NobiliaBuyer') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ZZ_NobiliaBuyer'), 'nl_NL', 'Y', '','','Nobilia Buyer','','','','','Nobilia Buyer'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_NobiliaBuyer') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nobilia Buyer',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Nobilia Buyer' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_NobiliaBuyer') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'ZZ_BuyerGnl','',
'2JC2',
'',
'Nobilia Buyer',
'',
'',
'',
'',
'Nobilia Buyer',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'ZZ_BuyerGnl' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2JC2', help = '', name = 'Nobilia Buyer', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Nobilia Buyer', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'ZZ_BuyerGnl' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ZZ_BuyerGnl'), 'fr_FR', 'Y', '','','Nobilia Buyer','','','','','Nobilia Buyer'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_BuyerGnl') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nobilia Buyer',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Nobilia Buyer' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_BuyerGnl') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ZZ_BuyerGnl'), 'nl_NL', 'Y', '','','Nobilia Buyer','','','','','Nobilia Buyer'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_BuyerGnl') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nobilia Buyer',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Nobilia Buyer' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_BuyerGnl') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'ZZ_FileName','',
'2JC2',
'',
'FileName',
'',
'',
'',
'',
'FileName',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'ZZ_FileName' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2JC2', help = '', name = 'FileName', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'FileName', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'ZZ_FileName' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ZZ_FileName'), 'fr_FR', 'Y', '','','FileName','','','','','FileName'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_FileName') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'FileName',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'FileName' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_FileName') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ZZ_FileName'), 'nl_NL', 'Y', '','','FileName','','','','','FileName'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_FileName') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'FileName',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'FileName' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_FileName') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'InvoiceTotalAmt','',
'2JC2',
'',
'Montant Total Facture ',
'',
'',
'',
'',
'Montant Total Facture ',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'InvoiceTotalAmt' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2JC2', help = '', name = 'Montant Total Facture ', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Montant Total Facture ', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'InvoiceTotalAmt' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='InvoiceTotalAmt'), 'fr_FR', 'Y', '','','Montant Total Facture ','','','','','Montant Total Facture '
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='InvoiceTotalAmt') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Montant Total Facture ',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Montant Total Facture ' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='InvoiceTotalAmt') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='InvoiceTotalAmt'), 'nl_NL', 'Y', '','','Montant Total Facture ','','','','','Montant Total Facture '
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='InvoiceTotalAmt') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Montant Total Facture ',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Montant Total Facture ' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='InvoiceTotalAmt') and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ZZ_FileName',(select AD_Element_ID from AD_Element where ColumnName = 'ZZ_FileName'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Invoice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2JC2',
255,
'',
'FileName',
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
where not exists (select 1 from AD_Column where ColumnName = 'ZZ_FileName'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ZZ_FileName'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Invoice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2JC2', fieldlength = 255, help = '', name = 'FileName', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ZZ_FileName'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ZZ_FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')), 'fr_FR', 'Y', 'FileName'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'FileName' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ZZ_FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')), 'nl_NL', 'Y', 'FileName'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'FileName' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ZZ_FileName',(select AD_Element_ID from AD_Element where ColumnName = 'ZZ_FileName'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_Invoice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2JC2',
255,
'',
'FileName',
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
where not exists (select 1 from AD_Column where ColumnName = 'ZZ_FileName'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ZZ_FileName'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Invoice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2JC2', fieldlength = 255, help = '', name = 'FileName', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ZZ_FileName'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ZZ_FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')), 'fr_FR', 'Y', 'FileName'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'FileName' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ZZ_FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')), 'nl_NL', 'Y', 'FileName'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'FileName' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ZZ_OrgLine_ID',(select AD_Element_ID from AD_Element where ColumnName = 'ZZ_OrgLine_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_Org'),
(select AD_Table_ID from AD_Table where TableName = 'I_Invoice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2JC2',
10,
'',
'Organisation ligne',
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
where not exists (select 1 from AD_Column where ColumnName = 'ZZ_OrgLine_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ZZ_OrgLine_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_Org'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Invoice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2JC2', fieldlength = 10, help = '', name = 'Organisation ligne', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ZZ_OrgLine_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ZZ_OrgLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')), 'fr_FR', 'Y', 'Organisation ligne'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_OrgLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organisation ligne' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_OrgLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ZZ_OrgLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')), 'nl_NL', 'Y', 'Organisation ligne'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_OrgLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organisation ligne' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_OrgLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'VendorDocNum',(select AD_Element_ID from AD_Element where ColumnName = 'VendorDocNum'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Invoice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2JC2',
30,
'',
'N°Fact. Frnr',
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
where not exists (select 1 from AD_Column where ColumnName = 'VendorDocNum'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'VendorDocNum'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Invoice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2JC2', fieldlength = 30, help = '', name = 'N°Fact. Frnr', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'VendorDocNum'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')), 'fr_FR', 'Y', 'N°Fact. Frnr'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'N°Fact. Frnr' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')), 'nl_NL', 'Y', 'N°Fact. Frnr'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'N°Fact. Frnr' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsVendorNobilia',(select AD_Element_ID from AD_Element where ColumnName = 'IsVendorNobilia'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_User'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'2JC2',
1,
'',
'Correspondant Nobilia',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsVendorNobilia'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsVendorNobilia'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_User'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = '2JC2', fieldlength = 1, help = '', name = 'Correspondant Nobilia', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsVendorNobilia'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsVendorNobilia' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')), 'fr_FR', 'Y', 'Correspondant Nobilia'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsVendorNobilia' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Correspondant Nobilia' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsVendorNobilia' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsVendorNobilia' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')), 'nl_NL', 'Y', 'Correspondant Nobilia'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsVendorNobilia' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Correspondant Nobilia' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsVendorNobilia' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ZZ_ValueNobilia',(select AD_Element_ID from AD_Element where ColumnName = 'ZZ_ValueNobilia'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_PaymentTerm'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2JC2',
60,
'',
'Valeur Nobilia',
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
where not exists (select 1 from AD_Column where ColumnName = 'ZZ_ValueNobilia'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaymentTerm'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ZZ_ValueNobilia'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_PaymentTerm'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2JC2', fieldlength = 60, help = '', name = 'Valeur Nobilia', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ZZ_ValueNobilia'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaymentTerm');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ZZ_ValueNobilia' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaymentTerm')), 'fr_FR', 'Y', 'Valeur Nobilia'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_ValueNobilia' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaymentTerm')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Valeur Nobilia' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_ValueNobilia' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaymentTerm')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ZZ_ValueNobilia' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaymentTerm')), 'nl_NL', 'Y', 'Valeur Nobilia'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_ValueNobilia' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaymentTerm')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Valeur Nobilia' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_ValueNobilia' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaymentTerm')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ZZ_NobiliaBuyer',(select AD_Element_ID from AD_Element where ColumnName = 'ZZ_NobiliaBuyer'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_OrgInfo'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2JC2',
30,
'',
'Nobilia Buyer',
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
where not exists (select 1 from AD_Column where ColumnName = 'ZZ_NobiliaBuyer'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ZZ_NobiliaBuyer'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_OrgInfo'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2JC2', fieldlength = 30, help = '', name = 'Nobilia Buyer', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ZZ_NobiliaBuyer'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ZZ_NobiliaBuyer' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')), 'fr_FR', 'Y', 'Nobilia Buyer'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_NobiliaBuyer' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Nobilia Buyer' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_NobiliaBuyer' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ZZ_NobiliaBuyer' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')), 'nl_NL', 'Y', 'Nobilia Buyer'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_NobiliaBuyer' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Nobilia Buyer' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_NobiliaBuyer' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ZZ_VatNumber',(select AD_Element_ID from AD_Element where ColumnName = 'ZZ_VatNumber'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Invoice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2JC2',
30,
'',
'N° TVA',
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
where not exists (select 1 from AD_Column where ColumnName = 'ZZ_VatNumber'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ZZ_VatNumber'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Invoice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2JC2', fieldlength = 30, help = '', name = 'N° TVA', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ZZ_VatNumber'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ZZ_VatNumber' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')), 'fr_FR', 'Y', 'N° TVA'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_VatNumber' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'N° TVA' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_VatNumber' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ZZ_VatNumber' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')), 'nl_NL', 'Y', 'N° TVA'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_VatNumber' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'N° TVA' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_VatNumber' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ZZ_BuyerGnl',(select AD_Element_ID from AD_Element where ColumnName = 'ZZ_BuyerGnl'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Invoice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2JC2',
30,
'',
'Nobilia Buyer',
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
where not exists (select 1 from AD_Column where ColumnName = 'ZZ_BuyerGnl'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ZZ_BuyerGnl'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Invoice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2JC2', fieldlength = 30, help = '', name = 'Nobilia Buyer', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ZZ_BuyerGnl'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ZZ_BuyerGnl' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')), 'fr_FR', 'Y', 'Nobilia Buyer'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_BuyerGnl' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Nobilia Buyer' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_BuyerGnl' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ZZ_BuyerGnl' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')), 'nl_NL', 'Y', 'Nobilia Buyer'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_BuyerGnl' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Nobilia Buyer' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_BuyerGnl' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ZZ_NobiliaCreditTerm',(select AD_Element_ID from AD_Element where ColumnName = 'ZZ_NobiliaCreditTerm'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Invoice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2JC2',
60,
'',
'Délai Paiement Nobilia',
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
where not exists (select 1 from AD_Column where ColumnName = 'ZZ_NobiliaCreditTerm'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ZZ_NobiliaCreditTerm'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Invoice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2JC2', fieldlength = 60, help = '', name = 'Délai Paiement Nobilia', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ZZ_NobiliaCreditTerm'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ZZ_NobiliaCreditTerm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')), 'fr_FR', 'Y', 'Délai Paiement Nobilia'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_NobiliaCreditTerm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Délai Paiement Nobilia' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_NobiliaCreditTerm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ZZ_NobiliaCreditTerm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')), 'nl_NL', 'Y', 'Délai Paiement Nobilia'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_NobiliaCreditTerm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Délai Paiement Nobilia' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_NobiliaCreditTerm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'InvoiceTotalAmt',(select AD_Element_ID from AD_Element where ColumnName = 'InvoiceTotalAmt'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Amount'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Invoice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2JC2',
14,
'',
'Montant Total Facture ',
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
where not exists (select 1 from AD_Column where ColumnName = 'InvoiceTotalAmt'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'InvoiceTotalAmt'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Amount'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Invoice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2JC2', fieldlength = 14, help = '', name = 'Montant Total Facture ', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'InvoiceTotalAmt'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='InvoiceTotalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')), 'fr_FR', 'Y', 'Montant Total Facture '
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='InvoiceTotalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Montant Total Facture ' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='InvoiceTotalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='InvoiceTotalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')), 'nl_NL', 'Y', 'Montant Total Facture '
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='InvoiceTotalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Montant Total Facture ' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='InvoiceTotalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ZZ_OrgLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Product'),
(select AD_Tab_ID from AD_Tab where Value = 'Invoice_510' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Invoice_279')),
'Organisation ligne',
'',
0,
'',
'2JC2',
'',
'',
405,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZZ_OrgLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Product'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Invoice_510' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Invoice_279')), name = 'Organisation ligne', description = '', displaylength = 0, displaylogic = '', entitytype = '2JC2', help = '', obscuretype = '', seqno = 405, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZZ_OrgLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_OrgLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))), 'fr_FR', 'Y', '','','Organisation ligne'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_OrgLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Organisation ligne' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_OrgLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_OrgLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))), 'nl_NL', 'Y', '','','Organisation ligne'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_OrgLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Organisation ligne' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_OrgLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsVendorNobilia' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'User_118' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'User_108')),
'Correspondant Nobilia',
'',
0,
'',
'2JC2',
'',
'',
215,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsVendorNobilia' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'User_118' and ad_window_id in (select ad_window_id from ad_window where value = 'User_108')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'User_118' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'User_108')), name = 'Correspondant Nobilia', description = '', displaylength = 0, displaylogic = '', entitytype = '2JC2', help = '', obscuretype = '', seqno = 215, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsVendorNobilia' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'User_118' and ad_window_id in (select ad_window_id from ad_window where value = 'User_108'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsVendorNobilia' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'User_118' and ad_window_id in (select ad_window_id from ad_window where value = 'User_108'))), 'fr_FR', 'Y', '','','Correspondant Nobilia'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsVendorNobilia' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'User_118' and ad_window_id in (select ad_window_id from ad_window where value = 'User_108'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Correspondant Nobilia' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsVendorNobilia' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'User_118' and ad_window_id in (select ad_window_id from ad_window where value = 'User_108'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsVendorNobilia' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'User_118' and ad_window_id in (select ad_window_id from ad_window where value = 'User_108'))), 'nl_NL', 'Y', '','','Correspondant Nobilia'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsVendorNobilia' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'User_118' and ad_window_id in (select ad_window_id from ad_window where value = 'User_108'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Correspondant Nobilia' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsVendorNobilia' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'User_118' and ad_window_id in (select ad_window_id from ad_window where value = 'User_108'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ZZ_ValueNobilia' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaymentTerm')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Payment Term_184' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Payment Term_141')),
'Valeur Nobilia',
'',
0,
'',
'2JC2',
'',
'',
225,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZZ_ValueNobilia' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaymentTerm'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment Term_184' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment Term_141')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Payment Term_184' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Payment Term_141')), name = 'Valeur Nobilia', description = '', displaylength = 0, displaylogic = '', entitytype = '2JC2', help = '', obscuretype = '', seqno = 225, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZZ_ValueNobilia' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaymentTerm'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment Term_184' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment Term_141'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_ValueNobilia' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaymentTerm')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment Term_184' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment Term_141'))), 'fr_FR', 'Y', '','','Valeur Nobilia'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_ValueNobilia' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaymentTerm')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment Term_184' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment Term_141'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Valeur Nobilia' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_ValueNobilia' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaymentTerm')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment Term_184' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment Term_141'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_ValueNobilia' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaymentTerm')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment Term_184' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment Term_141'))), 'nl_NL', 'Y', '','','Valeur Nobilia'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_ValueNobilia' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaymentTerm')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment Term_184' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment Term_141'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Valeur Nobilia' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_ValueNobilia' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaymentTerm')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment Term_184' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment Term_141'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ZZ_NobiliaBuyer' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Organization Info_170' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')),
'Nobilia Buyer',
'',
0,
'',
'2JC2',
'',
'',
85,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZZ_NobiliaBuyer' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Organization Info_170' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')), name = 'Nobilia Buyer', description = '', displaylength = 0, displaylogic = '', entitytype = '2JC2', help = '', obscuretype = '', seqno = 85, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZZ_NobiliaBuyer' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_NobiliaBuyer' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'fr_FR', 'Y', '','','Nobilia Buyer'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_NobiliaBuyer' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nobilia Buyer' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_NobiliaBuyer' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_NobiliaBuyer' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'nl_NL', 'Y', '','','Nobilia Buyer'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_NobiliaBuyer' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nobilia Buyer' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_NobiliaBuyer' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ZZ_NobiliaCreditTerm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Invoice_510' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Invoice_279')),
'Délai Paiement Nobilia',
'',
0,
'',
'2JC2',
'',
'',
195,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZZ_NobiliaCreditTerm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Invoice_510' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Invoice_279')), name = 'Délai Paiement Nobilia', description = '', displaylength = 0, displaylogic = '', entitytype = '2JC2', help = '', obscuretype = '', seqno = 195, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZZ_NobiliaCreditTerm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_NobiliaCreditTerm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))), 'fr_FR', 'Y', '','','Délai Paiement Nobilia'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_NobiliaCreditTerm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Délai Paiement Nobilia' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_NobiliaCreditTerm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_NobiliaCreditTerm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))), 'nl_NL', 'Y', '','','Délai Paiement Nobilia'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_NobiliaCreditTerm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Délai Paiement Nobilia' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_NobiliaCreditTerm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ZZ_VatNumber' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Invoice_510' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Invoice_279')),
'N° TVA',
'',
0,
'',
'2JC2',
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
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZZ_VatNumber' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Invoice_510' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Invoice_279')), name = 'N° TVA', description = '', displaylength = 0, displaylogic = '', entitytype = '2JC2', help = '', obscuretype = '', seqno = 245, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZZ_VatNumber' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_VatNumber' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))), 'fr_FR', 'Y', '','','N° TVA'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_VatNumber' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'N° TVA' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_VatNumber' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_VatNumber' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))), 'nl_NL', 'Y', '','','N° TVA'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_VatNumber' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'N° TVA' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_VatNumber' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ZZ_BuyerGnl' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Invoice_510' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Invoice_279')),
'Nobilia Buyer',
'',
0,
'',
'2JC2',
'',
'',
406,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZZ_BuyerGnl' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Invoice_510' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Invoice_279')), name = 'Nobilia Buyer', description = '', displaylength = 0, displaylogic = '', entitytype = '2JC2', help = '', obscuretype = '', seqno = 406, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZZ_BuyerGnl' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_BuyerGnl' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))), 'fr_FR', 'Y', '','','Nobilia Buyer'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_BuyerGnl' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nobilia Buyer' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_BuyerGnl' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_BuyerGnl' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))), 'nl_NL', 'Y', '','','Nobilia Buyer'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_BuyerGnl' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nobilia Buyer' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_BuyerGnl' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ZZ_FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Invoice_510' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Invoice_279')),
'FileName',
'',
0,
'',
'2JC2',
'',
'',
216,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZZ_FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Invoice_510' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Invoice_279')), name = 'FileName', description = '', displaylength = 0, displaylogic = '', entitytype = '2JC2', help = '', obscuretype = '', seqno = 216, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZZ_FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))), 'fr_FR', 'Y', '','','FileName'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'FileName' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))), 'nl_NL', 'Y', '','','FileName'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'FileName' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Invoice_510' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Invoice_279')),
'Order Reference',
'Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner',
0,
'',
'2JC2',
'The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.',
'',
155,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Invoice_510' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Invoice_279')), name = 'Order Reference', description = 'Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner', displaylength = 0, displaylogic = '', entitytype = '2JC2', help = 'The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.', obscuretype = '', seqno = 155, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))), 'fr_FR', 'Y', 'Référence de la commande (achat ou vente) indiquée par le tiers (fournisseur ou client)','Identifie la référence de  la commande  (référence Tiers) pour une transaction spécifique. Souvent, c''est le numéro de la commande d''achat Tiers, imprimé sur la facture, qui est spécifié. Un numéro standard peut être défini au niveau du Tiers (onglet client de la fenêtre Tiers)','Référence commande'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Référence de la commande (achat ou vente) indiquée par le tiers (fournisseur ou client)',Help = 'Identifie la référence de  la commande  (référence Tiers) pour une transaction spécifique. Souvent, c''est le numéro de la commande d''achat Tiers, imprimé sur la facture, qui est spécifié. Un numéro standard peut être défini au niveau du Tiers (onglet client de la fenêtre Tiers)',Name = 'Référence commande' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))), 'nl_NL', 'Y', 'Transactie referentie nummer (verkoop order, inkoop order) van uw relatie.','De order referentie is de order referentie van de relatie voor deze specifieke transactie. Vaak worden er inkoop order nummers gegeven om af te drukken op facturen voor makkelijke herkenning. Een standaard nummer kan worden ingesteld in het relatie scherm.','Order Referentie'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Transactie referentie nummer (verkoop order, inkoop order) van uw relatie.',Help = 'De order referentie is de order referentie van de relatie voor deze specifieke transactie. Vaak worden er inkoop order nummers gegeven om af te drukken op facturen voor makkelijke herkenning. Een standaard nummer kan worden ingesteld in het relatie scherm.',Name = 'Order Referentie' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'InvoiceTotalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Invoice_510' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Invoice_279')),
'Montant Total Facture ',
'',
0,
'',
'2JC2',
'',
'',
217,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'InvoiceTotalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Invoice_510' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Invoice_279')), name = 'Montant Total Facture ', description = '', displaylength = 0, displaylogic = '', entitytype = '2JC2', help = '', obscuretype = '', seqno = 217, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'InvoiceTotalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'InvoiceTotalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))), 'fr_FR', 'Y', '','','Montant Total Facture '
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'InvoiceTotalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Montant Total Facture ' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'InvoiceTotalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'InvoiceTotalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))), 'nl_NL', 'Y', '','','Montant Total Facture '
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'InvoiceTotalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Montant Total Facture ' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'InvoiceTotalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ZZ_FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Invoice_290' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Invoice (Vendor)_183')),
'FileName',
'',
0,
'',
'2JC2',
'',
'',
345,
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZZ_FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Invoice_290' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Invoice (Vendor)_183')), name = 'FileName', description = '', displaylength = 0, displaylogic = '', entitytype = '2JC2', help = '', obscuretype = '', seqno = 345, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZZ_FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))), 'fr_FR', 'Y', '','','FileName'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'FileName' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))), 'nl_NL', 'Y', '','','FileName'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'FileName' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Invoice_510' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Invoice_279')),
'N°Fact. Frnr',
'',
0,
'',
'2JC2',
'',
'',
215,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Invoice_510' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Invoice_279')), name = 'N°Fact. Frnr', description = '', displaylength = 0, displaylogic = '', entitytype = '2JC2', help = '', obscuretype = '', seqno = 215, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))), 'fr_FR', 'Y', '','','N°Fact. Frnr'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'N°Fact. Frnr' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))), 'nl_NL', 'Y', '','','N°Fact. Frnr'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'N°Fact. Frnr' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'ExistVendorNobilia','2JC2',
'Utilisateur existe déjà Vendor Nobilia',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'ExistVendorNobilia' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '2JC2', msgtext = 'Utilisateur existe déjà Vendor Nobilia', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'ExistVendorNobilia' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='ExistVendorNobilia'), 'fr_FR', 'Y', 'Utilisateur existe déjà Vendor Nobilia',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='ExistVendorNobilia') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Utilisateur existe déjà Vendor Nobilia',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='ExistVendorNobilia') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='ExistVendorNobilia'), 'nl_NL', 'Y', 'Utilisateur existe déjà Vendor Nobilia',''
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='ExistVendorNobilia') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Utilisateur existe déjà Vendor Nobilia',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='ExistVendorNobilia') and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2JC2 - 83298:Import Factures Nobilia: Ajout nouvelles colonn', description = '#83298 (Entity Type : 2JC2) Import Factures Nobilia: Ajout nouvelles colonnes', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2JC2' ;

