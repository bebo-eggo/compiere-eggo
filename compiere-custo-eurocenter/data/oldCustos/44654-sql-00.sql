insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'4654','44654 - EC-SFD0024-910-Nouvelle Modification Création Lignes',
'',
'',
'Y',
'',
'',
'',
'N',
'1.0',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = '4654' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '44654 - EC-SFD0024-910-Nouvelle Modification Création Lignes', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1.0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '4654' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'EcartAmt','',
'4654',
'',
'Montant Ecart',
'',
'',
'',
'',
'Montant Ecart',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'EcartAmt' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '4654', help = '', name = 'Montant Ecart', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Montant Ecart', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'EcartAmt' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='EcartAmt'), 'nl_NL', 'Y', '','','Montant Ecart','','','','','Montant Ecart'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='EcartAmt') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Montant Ecart',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Montant Ecart' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='EcartAmt') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='EcartAmt'), 'fr_FR', 'Y', '','','Montant Ecart','','','','','Montant Ecart'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='EcartAmt') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Montant Ecart',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Montant Ecart' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='EcartAmt') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'R_Caisse_Contrepartie','4654',
'Relevé Caisse Contrepartie ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'R_Caisse_Contrepartie' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '4654', msgtext = 'Relevé Caisse Contrepartie ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'R_Caisse_Contrepartie' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='R_Caisse_Contrepartie'), 'nl_NL', 'Y', 'Relevé Caisse Contrepartie ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='R_Caisse_Contrepartie') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Relevé Caisse Contrepartie ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='R_Caisse_Contrepartie') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='R_Caisse_Contrepartie'), 'fr_FR', 'Y', 'Relevé Caisse Contrepartie ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='R_Caisse_Contrepartie') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Relevé Caisse Contrepartie ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='R_Caisse_Contrepartie') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'Sortie_caisse_Amt_Zero_ERR','4654',
'«Montant Sortie de caisse» doit être différent 0',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'Sortie_caisse_Amt_Zero_ERR' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '4654', msgtext = '«Montant Sortie de caisse» doit être différent 0', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'Sortie_caisse_Amt_Zero_ERR' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='Sortie_caisse_Amt_Zero_ERR'), 'nl_NL', 'Y', '«Montant Sortie de caisse» doit être différent 0',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='Sortie_caisse_Amt_Zero_ERR') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '«Montant Sortie de caisse» doit être différent 0',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='Sortie_caisse_Amt_Zero_ERR') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='Sortie_caisse_Amt_Zero_ERR'), 'fr_FR', 'Y', '«Montant Sortie de caisse» doit être différent 0',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='Sortie_caisse_Amt_Zero_ERR') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '«Montant Sortie de caisse» doit être différent 0',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='Sortie_caisse_Amt_Zero_ERR') and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '44654 - EC-SFD0024-910-Nouvelle Modification Création Lignes', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1.0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '4654' ;

