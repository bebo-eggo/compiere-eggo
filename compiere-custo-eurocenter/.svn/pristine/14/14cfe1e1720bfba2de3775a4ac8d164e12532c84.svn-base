insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'8959','38959- SFD0021 - Modification ergonomie extrait bancaire',
'',
'',
'Y',
'',
'',
'',
'N',
'1.00',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = '8959' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '38959- SFD0021 - Modification ergonomie extrait bancaire', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1.00', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '8959' ;

insert into AD_Window (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,Value,name, ad_color_id, ad_image_id, description, entitytype, help, windowtype, winheight, winwidth, isactive, isbetafunctionality, isdefault ,ad_ctxarea_id, iscustomdefault) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Window'),'Remise Chèque/Financement','Remise Chèque/Financement',
(select AD_Color_ID from AD_Color where Name = ''),
(select AD_Image_ID from AD_Image where Name = ''),
'',
'8959',
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
where not exists (select 1 from AD_Window where Value = 'Remise Chèque/Financement' );

update AD_Window set Updated = sysdate, UpdatedBy = 0, name = 'Remise Chèque/Financement', ad_color_id = (select AD_Color_ID from AD_Color where Name = ''), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), description = '', entitytype = '8959', help = '', windowtype = 'M', winheight = 0, winwidth = 0, isactive = 'Y', isbetafunctionality = 'N', isdefault = 'N', ad_ctxarea_id = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), iscustomdefault = 'N' 
where Value = 'Remise Chèque/Financement' ;

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='Remise Chèque/Financement'), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Remise Chèque/Financement') and ad_language = 'nl_BE');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Remise Chèque/Financement') and ad_language = 'nl_BE';

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='Remise Chèque/Financement'), 'fr_FR', 'Y', '','','Remise Chèque/Financement '
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Remise Chèque/Financement') and ad_language = 'fr_FR');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Remise Chèque/Financement ' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Remise Chèque/Financement') and ad_language = 'fr_FR';

insert into AD_Window (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,Value,name, ad_color_id, ad_image_id, description, entitytype, help, windowtype, winheight, winwidth, isactive, isbetafunctionality, isdefault ,ad_ctxarea_id, iscustomdefault) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Window'),'CLOSING CASH','CLOSING CASH',
(select AD_Color_ID from AD_Color where Name = ''),
(select AD_Image_ID from AD_Image where Name = ''),
'',
'8959',
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
where not exists (select 1 from AD_Window where Value = 'CLOSING CASH' );

update AD_Window set Updated = sysdate, UpdatedBy = 0, name = 'CLOSING CASH', ad_color_id = (select AD_Color_ID from AD_Color where Name = ''), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), description = '', entitytype = '8959', help = '', windowtype = 'M', winheight = 0, winwidth = 0, isactive = 'Y', isbetafunctionality = 'N', isdefault = 'N', ad_ctxarea_id = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), iscustomdefault = 'N' 
where Value = 'CLOSING CASH' ;

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='CLOSING CASH'), 'nl_BE', 'Y', '','','CLOSING CASH'
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='CLOSING CASH') and ad_language = 'nl_BE');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'CLOSING CASH' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='CLOSING CASH') and ad_language = 'nl_BE';

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='CLOSING CASH'), 'fr_FR', 'Y', '','','CLOSING CASH'
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='CLOSING CASH') and ad_language = 'fr_FR');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'CLOSING CASH' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='CLOSING CASH') and ad_language = 'fr_FR';

insert into AD_Window (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,Value,name, ad_color_id, ad_image_id, description, entitytype, help, windowtype, winheight, winwidth, isactive, isbetafunctionality, isdefault ,ad_ctxarea_id, iscustomdefault) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Window'),'Deposit Bank','Deposit Bank',
(select AD_Color_ID from AD_Color where Name = ''),
(select AD_Image_ID from AD_Image where Name = ''),
'',
'8959',
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
where not exists (select 1 from AD_Window where Value = 'Deposit Bank' );

update AD_Window set Updated = sysdate, UpdatedBy = 0, name = 'Deposit Bank', ad_color_id = (select AD_Color_ID from AD_Color where Name = ''), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), description = '', entitytype = '8959', help = '', windowtype = 'M', winheight = 0, winwidth = 0, isactive = 'Y', isbetafunctionality = 'N', isdefault = 'N', ad_ctxarea_id = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), iscustomdefault = 'N' 
where Value = 'Deposit Bank' ;

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='Deposit Bank'), 'nl_BE', 'Y', '','','Deposit Bank'
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Deposit Bank') and ad_language = 'nl_BE');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Deposit Bank' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Deposit Bank') and ad_language = 'nl_BE';

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='Deposit Bank'), 'fr_FR', 'Y', '','','Deposit Bank'
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Deposit Bank') and ad_language = 'fr_FR');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Deposit Bank' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Deposit Bank') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'EtatCaisse_SQL','',
'8959',
'',
'EtatCaisse_SQL',
'',
'',
'',
'',
'EtatCaisse_SQL',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'EtatCaisse_SQL' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '8959', help = '', name = 'EtatCaisse_SQL', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'EtatCaisse_SQL', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'EtatCaisse_SQL' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='EtatCaisse_SQL'), 'nl_BE', 'Y', '','','EtatCaisse_SQL','','','','','EtatCaisse_SQL'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='EtatCaisse_SQL') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'EtatCaisse_SQL',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'EtatCaisse_SQL' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='EtatCaisse_SQL') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='EtatCaisse_SQL'), 'fr_FR', 'Y', '','','EtatCaisse_SQL','','','','','EtatCaisse_SQL'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='EtatCaisse_SQL') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'EtatCaisse_SQL',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'EtatCaisse_SQL' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='EtatCaisse_SQL') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'EtatCaisse_Zoom','',
'8959',
'',
'Visualisation Etat de Caisse',
'',
'',
'',
'',
'Visualisation Etat de Caisse',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'EtatCaisse_Zoom' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '8959', help = '', name = 'Visualisation Etat de Caisse', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Visualisation Etat de Caisse', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'EtatCaisse_Zoom' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='EtatCaisse_Zoom'), 'nl_BE', 'Y', '','','Visualisation Etat de Caisse','','','','','Visualisation Etat de Caisse'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='EtatCaisse_Zoom') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Visualisation Etat de Caisse',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Visualisation Etat de Caisse' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='EtatCaisse_Zoom') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='EtatCaisse_Zoom'), 'fr_FR', 'Y', '','','Visualisation Etat de Caisse','','','','','Visualisation Etat de Caisse'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='EtatCaisse_Zoom') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Visualisation Etat de Caisse',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Visualisation Etat de Caisse' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='EtatCaisse_Zoom') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'TransfertChequeFinancement_Zoom','',
'8959',
'',
'Transfert Cheque/Financement',
'',
'',
'',
'',
'Transfert Cheque/Financement',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'TransfertChequeFinancement_Zoom' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '8959', help = '', name = 'Transfert Cheque/Financement', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Transfert Cheque/Financement', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'TransfertChequeFinancement_Zoom' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='TransfertChequeFinancement_Zoom'), 'nl_BE', 'Y', '','','Créer Transfert Chèques','','','','','Créer Transfert Chèques'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TransfertChequeFinancement_Zoom') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Créer Transfert Chèques',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Créer Transfert Chèques' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TransfertChequeFinancement_Zoom') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='TransfertChequeFinancement_Zoom'), 'fr_FR', 'Y', '','','Créer Transfert Chèques','','','','','Créer Transfert Chèques'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TransfertChequeFinancement_Zoom') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Créer Transfert Chèques',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Créer Transfert Chèques' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TransfertChequeFinancement_Zoom') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'CreerTransfertFinancement','',
'8959',
'',
'Créer Transfert Financement',
'',
'',
'',
'',
'Créer Transfert Financement',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'CreerTransfertFinancement' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '8959', help = '', name = 'Créer Transfert Financement', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Créer Transfert Financement', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'CreerTransfertFinancement' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='CreerTransfertFinancement'), 'nl_BE', 'Y', '','','Créer Transfert Financement','','','','','Créer Transfert Financement'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='CreerTransfertFinancement') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Créer Transfert Financement',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Créer Transfert Financement' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='CreerTransfertFinancement') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='CreerTransfertFinancement'), 'fr_FR', 'Y', '','','Créer Transfert Financement','','','','','Créer Transfert Financement'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='CreerTransfertFinancement') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Créer Transfert Financement',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Créer Transfert Financement' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='CreerTransfertFinancement') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Depotenbanque_Zoom','',
'8959',
'',
'Dépôt en banque',
'',
'',
'',
'',
'Dépôt en banque ',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Depotenbanque_Zoom' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '8959', help = '', name = 'Dépôt en banque', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Dépôt en banque ', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Depotenbanque_Zoom' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Depotenbanque_Zoom'), 'nl_BE', 'Y', '','','Dépôt en banque','','','','','Dépôt en banque '
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Depotenbanque_Zoom') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Dépôt en banque',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Dépôt en banque ' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Depotenbanque_Zoom') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Depotenbanque_Zoom'), 'fr_FR', 'Y', '','','Dépôt en banque','','','','','Dépôt en banque '
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Depotenbanque_Zoom') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Dépôt en banque',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Dépôt en banque ' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Depotenbanque_Zoom') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'SortiesdeCaisse_Zoom','',
'8959',
'',
'Sorties de Caisse',
'',
'',
'',
'',
'Sorties de Caisse',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'SortiesdeCaisse_Zoom' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '8959', help = '', name = 'Sorties de Caisse', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Sorties de Caisse', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'SortiesdeCaisse_Zoom' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='SortiesdeCaisse_Zoom'), 'nl_BE', 'Y', '','','Sorties de Caisse','','','','','Sorties de Caisse'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='SortiesdeCaisse_Zoom') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sorties de Caisse',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Sorties de Caisse' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='SortiesdeCaisse_Zoom') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='SortiesdeCaisse_Zoom'), 'fr_FR', 'Y', '','','Sorties de Caisse','','','','','Sorties de Caisse'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='SortiesdeCaisse_Zoom') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sorties de Caisse',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Sorties de Caisse' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='SortiesdeCaisse_Zoom') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'EtatCaisse_Zoom',(select AD_Element_ID from AD_Element where ColumnName = 'EtatCaisse_Zoom'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Button'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_BankStatement'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'140',
'',
'8959',
22,
'',
'Visualisation Etat de Caisse',
'',
0,
'',
'',
0,
'',
'Y',
'Y',
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
where not exists (select 1 from AD_Column where ColumnName = 'EtatCaisse_Zoom'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'EtatCaisse_Zoom'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Button'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_BankStatement'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '140', description = '', entitytype = '8959', fieldlength = 22, help = '', name = 'Visualisation Etat de Caisse', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'Y', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'EtatCaisse_Zoom'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='EtatCaisse_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')), 'nl_BE', 'Y', 'Visualisation Etat de Caisse'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='EtatCaisse_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Visualisation Etat de Caisse' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='EtatCaisse_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='EtatCaisse_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')), 'fr_FR', 'Y', 'Visualisation Etat de Caisse'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='EtatCaisse_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Visualisation Etat de Caisse' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='EtatCaisse_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'TransfertChequeFinancement_Zoom',(select AD_Element_ID from AD_Element where ColumnName = 'TransfertChequeFinancement_Zoom'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Button'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_BankStatement'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'8959',
22,
'',
'Transfert Cheque/Financement',
'',
0,
'',
'',
0,
'',
'Y',
'Y',
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
where not exists (select 1 from AD_Column where ColumnName = 'TransfertChequeFinancement_Zoom'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'TransfertChequeFinancement_Zoom'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Button'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_BankStatement'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '8959', fieldlength = 22, help = '', name = 'Transfert Cheque/Financement', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'Y', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'TransfertChequeFinancement_Zoom'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='TransfertChequeFinancement_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')), 'nl_BE', 'Y', 'Créer Transfert Chèques'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TransfertChequeFinancement_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Créer Transfert Chèques' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TransfertChequeFinancement_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='TransfertChequeFinancement_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')), 'fr_FR', 'Y', 'Créer Transfert Chèques'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TransfertChequeFinancement_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Créer Transfert Chèques' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TransfertChequeFinancement_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Depotenbanque_Zoom',(select AD_Element_ID from AD_Element where ColumnName = 'Depotenbanque_Zoom'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Button'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_BankStatement'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'8959',
22,
'',
'Dépôt en banque',
'',
0,
'',
'',
0,
'',
'Y',
'Y',
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
where not exists (select 1 from AD_Column where ColumnName = 'Depotenbanque_Zoom'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Depotenbanque_Zoom'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Button'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_BankStatement'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '8959', fieldlength = 22, help = '', name = 'Dépôt en banque', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'Y', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Depotenbanque_Zoom'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Depotenbanque_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')), 'nl_BE', 'Y', 'Dépôt en banque'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Depotenbanque_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Dépôt en banque' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Depotenbanque_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Depotenbanque_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')), 'fr_FR', 'Y', 'Dépôt en banque'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Depotenbanque_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Dépôt en banque' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Depotenbanque_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'SortiesdeCaisse_Zoom',(select AD_Element_ID from AD_Element where ColumnName = 'SortiesdeCaisse_Zoom'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Button'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_BankStatement'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'8959',
22,
'',
'Sorties de Caisse',
'',
0,
'',
'',
0,
'',
'Y',
'Y',
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
where not exists (select 1 from AD_Column where ColumnName = 'SortiesdeCaisse_Zoom'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'SortiesdeCaisse_Zoom'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Button'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_BankStatement'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '8959', fieldlength = 22, help = '', name = 'Sorties de Caisse', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'Y', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'SortiesdeCaisse_Zoom'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='SortiesdeCaisse_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')), 'nl_BE', 'Y', 'Sorties de Caisse'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='SortiesdeCaisse_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sorties de Caisse' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='SortiesdeCaisse_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='SortiesdeCaisse_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')), 'fr_FR', 'Y', 'Sorties de Caisse'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='SortiesdeCaisse_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sorties de Caisse' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='SortiesdeCaisse_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'fr_FR';

insert into AD_Tab (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,Value,name, ad_columnsortorder_id, ad_columnsortyesno_id, ad_column_id, ad_image_id, ad_process_id, ad_table_id, ad_window_id, commitwarning, description, entitytype, help, importfields, included_tab_id, orderbyclause, seqno, tablevel, whereclause, isactive, hastree, isinfotab, isreadonly, issinglerow, issorttab, istranslationtab, DISPLAYLOGIC, ISADVANCEDTAB, ISINSERTRECORD, READONLYLOGIC, AD_CTXAREA_ID, ISDISPLAYED, REFERENCED_TAB_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Tab'),'Bank Statement_328','Bank Statement',
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'C_BankStatement')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'C_BankStatement')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'C_BankStatement')),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_BankStatement'),
(select AD_Window_ID from AD_Window where Value = 'Bank Statement_194'),
'',
'Bank Statement',
'8959',
'The Bank Statement Tab defines the Bank Statement to be reconciled.',
'',
(select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')),
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
where not exists (select 1 from AD_Tab where Value = 'Bank Statement_328'  and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'));

update AD_Tab set Updated = sysdate, UpdatedBy = 0, name = 'Bank Statement', ad_columnsortorder_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'C_BankStatement')), ad_columnsortyesno_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'C_BankStatement')), ad_column_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'C_BankStatement')), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_BankStatement'), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194'), commitwarning = '', description = 'Bank Statement', entitytype = '8959', help = 'The Bank Statement Tab defines the Bank Statement to be reconciled.', importfields = '', included_tab_id = (select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')), orderbyclause = '', seqno = 10, tablevel = 0, whereclause = '', isactive = 'Y', hastree = 'N', isinfotab = 'N', isreadonly = 'N', issinglerow = 'Y', issorttab = 'N', istranslationtab = 'N', DISPLAYLOGIC = '', ISADVANCEDTAB = 'N', ISINSERTRECORD = 'Y', READONLYLOGIC = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ISDISPLAYED = 'Y', REFERENCED_TAB_ID = (select AD_Tab_ID from AD_Tab where Value = '') 
where Value = 'Bank Statement_328'  and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194');

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194')), 'nl_BE', 'Y', '','','',''
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194')) and ad_language = 'nl_BE');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = '' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194')) and ad_language = 'nl_BE';

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194')), 'fr_FR', 'Y', '','Bank Statement','The Bank Statement Tab defines the Bank Statement to be reconciled.','Bank Statement'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194')) and ad_language = 'fr_FR');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = 'Bank Statement',Help = 'The Bank Statement Tab defines the Bank Statement to be reconciled.',Name = 'Bank Statement' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194')) and ad_language = 'fr_FR';

insert into AD_Tab (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,Value,name, ad_columnsortorder_id, ad_columnsortyesno_id, ad_column_id, ad_image_id, ad_process_id, ad_table_id, ad_window_id, commitwarning, description, entitytype, help, importfields, included_tab_id, orderbyclause, seqno, tablevel, whereclause, isactive, hastree, isinfotab, isreadonly, issinglerow, issorttab, istranslationtab, DISPLAYLOGIC, ISADVANCEDTAB, ISINSERTRECORD, READONLYLOGIC, AD_CTXAREA_ID, ISDISPLAYED, REFERENCED_TAB_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Tab'),'Remise Chèque/Financement','Remise Chèque/Financement',
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_CheckDelivery')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_CheckDelivery')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_CheckDelivery')),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_CheckDelivery'),
(select AD_Window_ID from AD_Window where Value = 'Remise Chèque/Financement'),
'',
'Remise en Banque',
'8959',
'',
'N',
(select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Remise Chèque/Financement')),
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
where not exists (select 1 from AD_Tab where Value = 'Remise Chèque/Financement'  and ad_window_id in (select ad_window_id from ad_window where value = 'Remise Chèque/Financement'));

update AD_Tab set Updated = sysdate, UpdatedBy = 0, name = 'Remise Chèque/Financement', ad_columnsortorder_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_CheckDelivery')), ad_columnsortyesno_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_CheckDelivery')), ad_column_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_CheckDelivery')), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_CheckDelivery'), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Remise Chèque/Financement'), commitwarning = '', description = 'Remise en Banque', entitytype = '8959', help = '', importfields = 'N', included_tab_id = (select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Remise Chèque/Financement')), orderbyclause = '', seqno = 10, tablevel = 0, whereclause = '', isactive = 'Y', hastree = 'N', isinfotab = 'N', isreadonly = 'N', issinglerow = 'Y', issorttab = 'N', istranslationtab = 'N', DISPLAYLOGIC = '', ISADVANCEDTAB = 'N', ISINSERTRECORD = 'Y', READONLYLOGIC = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ISDISPLAYED = 'Y', REFERENCED_TAB_ID = (select AD_Tab_ID from AD_Tab where Value = '') 
where Value = 'Remise Chèque/Financement'  and ad_window_id in (select ad_window_id from ad_window where value = 'Remise Chèque/Financement');

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Remise Chèque/Financement' and ad_window_id in (select ad_window_id from ad_window where value = 'Remise Chèque/Financement')), 'nl_BE', 'Y', '','','',''
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Remise Chèque/Financement' and ad_window_id in (select ad_window_id from ad_window where value = 'Remise Chèque/Financement')) and ad_language = 'nl_BE');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = '' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Remise Chèque/Financement' and ad_window_id in (select ad_window_id from ad_window where value = 'Remise Chèque/Financement')) and ad_language = 'nl_BE';

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Remise Chèque/Financement' and ad_window_id in (select ad_window_id from ad_window where value = 'Remise Chèque/Financement')), 'fr_FR', 'Y', '','Remise en Banque','','Remise Chèque/Financement'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Remise Chèque/Financement' and ad_window_id in (select ad_window_id from ad_window where value = 'Remise Chèque/Financement')) and ad_language = 'fr_FR');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = 'Remise en Banque',Help = '',Name = 'Remise Chèque/Financement' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Remise Chèque/Financement' and ad_window_id in (select ad_window_id from ad_window where value = 'Remise Chèque/Financement')) and ad_language = 'fr_FR';

insert into AD_Tab (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,Value,name, ad_columnsortorder_id, ad_columnsortyesno_id, ad_column_id, ad_image_id, ad_process_id, ad_table_id, ad_window_id, commitwarning, description, entitytype, help, importfields, included_tab_id, orderbyclause, seqno, tablevel, whereclause, isactive, hastree, isinfotab, isreadonly, issinglerow, issorttab, istranslationtab, DISPLAYLOGIC, ISADVANCEDTAB, ISINSERTRECORD, READONLYLOGIC, AD_CTXAREA_ID, ISDISPLAYED, REFERENCED_TAB_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Tab'),'FERMETURE DE CAISSE ','FERMETURE DE CAISSE ',
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'C_BankStatement')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'C_BankStatement')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'C_BankStatement')),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_BankStatement'),
(select AD_Window_ID from AD_Window where Value = 'CLOSING CASH'),
'',
'',
'8959',
'',
'N',
(select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
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
where not exists (select 1 from AD_Tab where Value = 'FERMETURE DE CAISSE '  and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

update AD_Tab set Updated = sysdate, UpdatedBy = 0, name = 'FERMETURE DE CAISSE ', ad_columnsortorder_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'C_BankStatement')), ad_columnsortyesno_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'C_BankStatement')), ad_column_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'C_BankStatement')), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_BankStatement'), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH'), commitwarning = '', description = '', entitytype = '8959', help = '', importfields = 'N', included_tab_id = (select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), orderbyclause = '', seqno = 10, tablevel = 0, whereclause = '', isactive = 'Y', hastree = 'N', isinfotab = 'N', isreadonly = 'N', issinglerow = 'N', issorttab = 'N', istranslationtab = 'N', DISPLAYLOGIC = '', ISADVANCEDTAB = 'N', ISINSERTRECORD = 'Y', READONLYLOGIC = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ISDISPLAYED = 'Y', REFERENCED_TAB_ID = (select AD_Tab_ID from AD_Tab where Value = '') 
where Value = 'FERMETURE DE CAISSE '  and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH');

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')), 'nl_BE', 'Y', '','','','FERMETURE DE CAISSE '
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')) and ad_language = 'nl_BE');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'FERMETURE DE CAISSE ' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')) and ad_language = 'nl_BE';

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')), 'fr_FR', 'Y', '','','','FERMETURE DE CAISSE '
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')) and ad_language = 'fr_FR');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'FERMETURE DE CAISSE ' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')) and ad_language = 'fr_FR';

insert into AD_Tab (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,Value,name, ad_columnsortorder_id, ad_columnsortyesno_id, ad_column_id, ad_image_id, ad_process_id, ad_table_id, ad_window_id, commitwarning, description, entitytype, help, importfields, included_tab_id, orderbyclause, seqno, tablevel, whereclause, isactive, hastree, isinfotab, isreadonly, issinglerow, issorttab, istranslationtab, DISPLAYLOGIC, ISADVANCEDTAB, ISINSERTRECORD, READONLYLOGIC, AD_CTXAREA_ID, ISDISPLAYED, REFERENCED_TAB_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Tab'),'Cash Movements','Cash Movements',
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'C_BankStatementLine')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'C_BankStatementLine')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'C_BankStatementLine')),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_BankStatementLine'),
(select AD_Window_ID from AD_Window where Value = 'CLOSING CASH'),
'',
'',
'8959',
'',
'N',
(select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'',
20,
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
where not exists (select 1 from AD_Tab where Value = 'Cash Movements'  and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

update AD_Tab set Updated = sysdate, UpdatedBy = 0, name = 'Cash Movements', ad_columnsortorder_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'C_BankStatementLine')), ad_columnsortyesno_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'C_BankStatementLine')), ad_column_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'C_BankStatementLine')), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_BankStatementLine'), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH'), commitwarning = '', description = '', entitytype = '8959', help = '', importfields = 'N', included_tab_id = (select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), orderbyclause = '', seqno = 20, tablevel = 0, whereclause = '', isactive = 'Y', hastree = 'N', isinfotab = 'N', isreadonly = 'N', issinglerow = 'N', issorttab = 'N', istranslationtab = 'N', DISPLAYLOGIC = '', ISADVANCEDTAB = 'N', ISINSERTRECORD = 'Y', READONLYLOGIC = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ISDISPLAYED = 'Y', REFERENCED_TAB_ID = (select AD_Tab_ID from AD_Tab where Value = '') 
where Value = 'Cash Movements'  and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH');

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')), 'nl_BE', 'Y', '','','','Cash Movements'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')) and ad_language = 'nl_BE');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'Cash Movements' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')) and ad_language = 'nl_BE';

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')), 'fr_FR', 'Y', '','','','Cash Movements'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')) and ad_language = 'fr_FR');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'Cash Movements' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')) and ad_language = 'fr_FR';

insert into AD_Tab (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,Value,name, ad_columnsortorder_id, ad_columnsortyesno_id, ad_column_id, ad_image_id, ad_process_id, ad_table_id, ad_window_id, commitwarning, description, entitytype, help, importfields, included_tab_id, orderbyclause, seqno, tablevel, whereclause, isactive, hastree, isinfotab, isreadonly, issinglerow, issorttab, istranslationtab, DISPLAYLOGIC, ISADVANCEDTAB, ISINSERTRECORD, READONLYLOGIC, AD_CTXAREA_ID, ISDISPLAYED, REFERENCED_TAB_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Tab'),'Deposit Bank','Deposit Bank',
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert')),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Window_ID from AD_Window where Value = 'Deposit Bank'),
'',
'',
'8959',
'',
'N',
(select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')),
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
where not exists (select 1 from AD_Tab where Value = 'Deposit Bank'  and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'));

update AD_Tab set Updated = sysdate, UpdatedBy = 0, name = 'Deposit Bank', ad_columnsortorder_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert')), ad_columnsortyesno_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert')), ad_column_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert')), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Deposit Bank'), commitwarning = '', description = '', entitytype = '8959', help = '', importfields = 'N', included_tab_id = (select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')), orderbyclause = '', seqno = 10, tablevel = 0, whereclause = '', isactive = 'Y', hastree = 'N', isinfotab = 'N', isreadonly = 'N', issinglerow = 'N', issorttab = 'N', istranslationtab = 'N', DISPLAYLOGIC = '', ISADVANCEDTAB = 'N', ISINSERTRECORD = 'Y', READONLYLOGIC = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ISDISPLAYED = 'Y', REFERENCED_TAB_ID = (select AD_Tab_ID from AD_Tab where Value = '') 
where Value = 'Deposit Bank'  and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank');

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')), 'nl_BE', 'Y', '','','','xxxx'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')) and ad_language = 'nl_BE');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'xxxx' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')) and ad_language = 'nl_BE';

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')), 'fr_FR', 'Y', '','','','xxxx'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')) and ad_language = 'fr_FR');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'xxxx' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Active',
'The record is active in the system',
1,
'',
'8959',
'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Active', description = 'The record is active in the system', displaylength = 1, displaylogic = '', entitytype = '8959', help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', obscuretype = '', seqno = 70, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The record is active in the system',Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Name = 'Active' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The record is active in the system',Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Name = 'Active' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')),
'Organization',
'Organizational entity within Tenant',
14,
'',
'8959',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')), name = 'Organization', description = 'Organizational entity within Tenant', displaylength = 14, displaylogic = '', entitytype = '8959', help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', obscuretype = '', seqno = 20, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'fr_FR', 'Y', 'Organizational entity within Tenant','An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organizational entity within Tenant',Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Name = 'Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'EndingBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')),
'Ending Balance',
'Ending or Closing Balance',
26,
'',
'8959',
'The Ending Balance is the result of adjusting the Beginning Balance by any payments or disbursements.',
'',
130,
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'EndingBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')), name = 'Ending Balance', description = 'Ending or Closing Balance', displaylength = 26, displaylogic = '', entitytype = '8959', help = 'The Ending Balance is the result of adjusting the Beginning Balance by any payments or disbursements.', obscuretype = '', seqno = 130, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'EndingBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EndingBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EndingBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EndingBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EndingBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'fr_FR', 'Y', 'Ending or Closing Balance','The Ending Balance is the result of adjusting the Beginning Balance by any payments or disbursements.','Ending Balance'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EndingBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Ending or Closing Balance',Help = 'The Ending Balance is the result of adjusting the Beginning Balance by any payments or disbursements.',Name = 'Ending Balance' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EndingBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsApproved' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Approved',
'Indicates if this document requires approval',
1,
'',
'8959',
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
'N',
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsApproved' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Approved', description = 'Indicates if this document requires approval', displaylength = 1, displaylogic = '', entitytype = '8959', help = 'The Approved checkbox indicates if this document requires approval before it can be processed.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsApproved' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsApproved' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Indicates if this document requires approval','The Approved checkbox indicates if this document requires approval before it can be processed.','Approved'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsApproved' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Indicates if this document requires approval',Help = 'The Approved checkbox indicates if this document requires approval before it can be processed.',Name = 'Approved' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsApproved' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsApproved' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Indicates if this document requires approval','The Approved checkbox indicates if this document requires approval before it can be processed.','Approved'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsApproved' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Indicates if this document requires approval',Help = 'The Approved checkbox indicates if this document requires approval before it can be processed.',Name = 'Approved' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsApproved' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'CreateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')),
'Create lines from',
'Process which will generate a new document lines based on an existing document',
23,
'',
'8959',
'The Create From process will create a new document based on information in an existing document selected by the user.',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'CreateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')), name = 'Create lines from', description = 'Process which will generate a new document lines based on an existing document', displaylength = 23, displaylogic = '', entitytype = '8959', help = 'The Create From process will create a new document based on information in an existing document selected by the user.', obscuretype = '', seqno = 120, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'CreateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CreateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CreateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CreateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CreateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'fr_FR', 'Y', 'Process which will generate a new document lines based on an existing document','The Create From process will create a new document based on information in an existing document selected by the user.','Create lines from'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CreateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Process which will generate a new document lines based on an existing document',Help = 'The Create From process will create a new document based on information in an existing document selected by the user.',Name = 'Create lines from' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CreateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Bank Account',
'Account at the Bank',
22,
'',
'8959',
'The Bank Account identifies an account at this Bank.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Bank Account', description = 'Account at the Bank', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'The Bank Account identifies an account at this Bank.', obscuretype = '', seqno = 30, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Account at the Bank','The Bank Account identifies an account at this Bank.','Bank Account'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Account at the Bank',Help = 'The Bank Account identifies an account at this Bank.',Name = 'Bank Account' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Account at the Bank','The Bank Account identifies an account at this Bank.','Bank Account'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Account at the Bank',Help = 'The Bank Account identifies an account at this Bank.',Name = 'Bank Account' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'StatementDifference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')),
'Statement difference',
'Difference between statement ending balance and actual ending balance',
26,
'',
'8959',
'The Statement Difference reflects the difference between the Statement Ending Balance and the Actual Ending Balance.',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'StatementDifference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')), name = 'Statement difference', description = 'Difference between statement ending balance and actual ending balance', displaylength = 26, displaylogic = '', entitytype = '8959', help = 'The Statement Difference reflects the difference between the Statement Ending Balance and the Actual Ending Balance.', obscuretype = '', seqno = 110, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'StatementDifference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StatementDifference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StatementDifference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StatementDifference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StatementDifference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'fr_FR', 'Y', 'Difference between statement ending balance and actual ending balance','The Statement Difference reflects the difference between the Statement Ending Balance and the Actual Ending Balance.','Statement difference'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StatementDifference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Difference between statement ending balance and actual ending balance',Help = 'The Statement Difference reflects the difference between the Statement Ending Balance and the Actual Ending Balance.',Name = 'Statement difference' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StatementDifference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')),
'Posted',
'Posting status',
23,
'@Processed@=Y &'||' @#ShowAcct@=Y',
'8959',
'The Posted field indicates the status of the Generation of General Ledger Accounting Lines',
'',
200,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')), name = 'Posted', description = 'Posting status', displaylength = 23, displaylogic = '@Processed@=Y &'||' @#ShowAcct@=Y', entitytype = '8959', help = 'The Posted field indicates the status of the Generation of General Ledger Accounting Lines', obscuretype = '', seqno = 200, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'fr_FR', 'Y', 'Posting status','The Posted field indicates the status of the Generation of General Ledger Accounting Lines','Posted'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Posting status',Help = 'The Posted field indicates the status of the Generation of General Ledger Accounting Lines',Name = 'Posted' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsManual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')),
'Manual',
'This is a manual process or entry',
1,
'',
'8959',
'The Manual check box indicates if the process or entry will be done manually.',
'',
80,
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsManual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')), name = 'Manual', description = 'This is a manual process or entry', displaylength = 1, displaylogic = '', entitytype = '8959', help = 'The Manual check box indicates if the process or entry will be done manually.', obscuretype = '', seqno = 80, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsManual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsManual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsManual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsManual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsManual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'fr_FR', 'Y', 'This is a manual process or entry','The Manual check box indicates if the process or entry will be done manually.','Manual'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsManual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'This is a manual process or entry',Help = 'The Manual check box indicates if the process or entry will be done manually.',Name = 'Manual' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsManual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')),
'Active',
'The record is active in the system',
1,
'',
'8959',
'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')), name = 'Active', description = 'The record is active in the system', displaylength = 1, displaylogic = '', entitytype = '8959', help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', obscuretype = '', seqno = 70, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'fr_FR', 'Y', 'The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The record is active in the system',Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Name = 'Active' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')),
'Tenant',
'Identifies the Client/Tenant for this installation.',
14,
'',
'8959',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')), name = 'Tenant', description = 'Identifies the Client/Tenant for this installation.', displaylength = 14, displaylogic = '', entitytype = '8959', help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', obscuretype = '', seqno = 10, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'fr_FR', 'Y', 'Identifies the Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Tenant'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies the Client/Tenant for this installation.',Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Name = 'Tenant' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'BeginningBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')),
'Beginning Balance',
'Balance prior to any transactions',
26,
'',
'8959',
'The Beginning Balance is the balance prior to making any adjustments for payments or disbursements.',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'BeginningBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')), name = 'Beginning Balance', description = 'Balance prior to any transactions', displaylength = 26, displaylogic = '', entitytype = '8959', help = 'The Beginning Balance is the balance prior to making any adjustments for payments or disbursements.', obscuretype = '', seqno = 90, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'BeginningBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BeginningBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BeginningBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BeginningBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BeginningBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'fr_FR', 'Y', 'Balance prior to any transactions','The Beginning Balance is the balance prior to making any adjustments for payments or disbursements.','Beginning Balance'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BeginningBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Balance prior to any transactions',Help = 'The Beginning Balance is the balance prior to making any adjustments for payments or disbursements.',Name = 'Beginning Balance' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BeginningBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'BeginningBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Beginning Balance',
'Balance prior to any transactions',
22,
'',
'8959',
'The Beginning Balance is the balance prior to making any adjustments for payments or disbursements.',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'BeginningBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Beginning Balance', description = 'Balance prior to any transactions', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'The Beginning Balance is the balance prior to making any adjustments for payments or disbursements.', obscuretype = '', seqno = 80, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'BeginningBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BeginningBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Balance prior to any transactions','The Beginning Balance is the balance prior to making any adjustments for payments or disbursements.','Beginning Balance'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BeginningBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Balance prior to any transactions',Help = 'The Beginning Balance is the balance prior to making any adjustments for payments or disbursements.',Name = 'Beginning Balance' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BeginningBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BeginningBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Balance prior to any transactions','The Beginning Balance is the balance prior to making any adjustments for payments or disbursements.','Beginning Balance'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BeginningBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Balance prior to any transactions',Help = 'The Beginning Balance is the balance prior to making any adjustments for payments or disbursements.',Name = 'Beginning Balance' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BeginningBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')),
'Name',
'Alphanumeric identifier of the entity',
60,
'',
'8959',
'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.',
'',
40,
-1,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')), name = 'Name', description = 'Alphanumeric identifier of the entity', displaylength = 60, displaylogic = '', entitytype = '8959', help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.', obscuretype = '', seqno = 40, sortno = -1, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'fr_FR', 'Y', 'Alphanumeric identifier of the entity','The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.','Name'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Alphanumeric identifier of the entity',Help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.',Name = 'Name' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'StatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')),
'Statement date',
'Date of the statement',
14,
'',
'8959',
'The Statement Date field defines the date of the statement.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'StatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')), name = 'Statement date', description = 'Date of the statement', displaylength = 14, displaylogic = '', entitytype = '8959', help = 'The Statement Date field defines the date of the statement.', obscuretype = '', seqno = 50, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'StatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'fr_FR', 'Y', 'Date of the statement','The Statement Date field defines the date of the statement.','Statement date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Date of the statement',Help = 'The Statement Date field defines the date of the statement.',Name = 'Statement date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Account Date',
'General Ledger Date',
7,
'',
'8959',
'The Account Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Account Date', description = 'General Ledger Date', displaylength = 7, displaylogic = '', entitytype = '8959', help = 'The Account Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.', obscuretype = '', seqno = 80, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'General Ledger Date','The Account Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','Account Date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'General Ledger Date',Help = 'The Account Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.',Name = 'Account Date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'General Ledger Date','The Account Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','Account Date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'General Ledger Date',Help = 'The Account Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.',Name = 'Account Date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'MatchStatement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')),
'Match Bank Statement',
'Match Bank Statement Info to Business Partners, Invoices and Payments',
23,
'',
'8959',
'',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'MatchStatement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')), name = 'Match Bank Statement', description = 'Match Bank Statement Info to Business Partners, Invoices and Payments', displaylength = 23, displaylogic = '', entitytype = '8959', help = '', obscuretype = '', seqno = 140, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'MatchStatement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MatchStatement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MatchStatement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MatchStatement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MatchStatement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'fr_FR', 'Y', 'Match Bank Statement Info to Business Partners, Invoices and Payments','','Match Bank Statement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MatchStatement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Match Bank Statement Info to Business Partners, Invoices and Payments',Help = '',Name = 'Match Bank Statement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MatchStatement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')),
'Description',
'Optional short description of the record',
60,
'',
'8959',
'A description is limited to 255 characters.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')), name = 'Description', description = 'Optional short description of the record', displaylength = 60, displaylogic = '', entitytype = '8959', help = 'A description is limited to 255 characters.', obscuretype = '', seqno = 60, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'fr_FR', 'Y', 'Optional short description of the record','A description is limited to 255 characters.','Description'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Optional short description of the record',Help = 'A description is limited to 255 characters.',Name = 'Description' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Active',
'The record is active in the system',
1,
'',
'8959',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Active', description = 'The record is active in the system', displaylength = 1, displaylogic = '', entitytype = '8959', help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', obscuretype = '', seqno = 60, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The record is active in the system',Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Name = 'Active' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The record is active in the system',Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Name = 'Active' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_BankStatement_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Bank Statement',
'Bank Statement of account',
22,
'',
'8959',
'The Bank Statement identifies a unique Bank Statement for a defined time period.  The statement defines all transactions that occurred',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BankStatement_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Bank Statement', description = 'Bank Statement of account', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'The Bank Statement identifies a unique Bank Statement for a defined time period.  The statement defines all transactions that occurred', obscuretype = '', seqno = 30, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BankStatement_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankStatement_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Bank Statement of account','The Bank Statement identifies a unique Bank Statement for a defined time period.  The statement defines all transactions that occurred','Bank Statement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankStatement_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Bank Statement of account',Help = 'The Bank Statement identifies a unique Bank Statement for a defined time period.  The statement defines all transactions that occurred',Name = 'Bank Statement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankStatement_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankStatement_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Bank Statement of account','The Bank Statement identifies a unique Bank Statement for a defined time period.  The statement defines all transactions that occurred','Bank Statement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankStatement_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Bank Statement of account',Help = 'The Bank Statement identifies a unique Bank Statement for a defined time period.  The statement defines all transactions that occurred',Name = 'Bank Statement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankStatement_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ChargeAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Charge amount',
'Charge Amount',
22,
'',
'8959',
'The Charge Amount indicates the amount for an additional charge.',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ChargeAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Charge amount', description = 'Charge Amount', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'The Charge Amount indicates the amount for an additional charge.', obscuretype = '', seqno = 150, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ChargeAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ChargeAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Charge Amount','The Charge Amount indicates the amount for an additional charge.','Charge amount'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ChargeAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Charge Amount',Help = 'The Charge Amount indicates the amount for an additional charge.',Name = 'Charge amount' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ChargeAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ChargeAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Charge Amount','The Charge Amount indicates the amount for an additional charge.','Charge amount'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ChargeAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Charge Amount',Help = 'The Charge Amount indicates the amount for an additional charge.',Name = 'Charge amount' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ChargeAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ZCreateFromOpenInvoiceSt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Create From Invoice',
'',
1,
'',
'8959',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZCreateFromOpenInvoiceSt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Create From Invoice', description = '', displaylength = 1, displaylogic = '', entitytype = '8959', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZCreateFromOpenInvoiceSt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZCreateFromOpenInvoiceSt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', '','','Create From Invoice'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZCreateFromOpenInvoiceSt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Create From Invoice' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZCreateFromOpenInvoiceSt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZCreateFromOpenInvoiceSt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', '','','Create From Invoice'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZCreateFromOpenInvoiceSt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Create From Invoice' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZCreateFromOpenInvoiceSt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'CreatePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Create Payment',
'Create Payment from Bank Statement Info',
1,
'',
'8959',
'Create Payment from Bank Statement Line. You must enter a business partner or invoice in the bank statement line before proceeding.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'CreatePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Create Payment', description = 'Create Payment from Bank Statement Info', displaylength = 1, displaylogic = '', entitytype = '8959', help = 'Create Payment from Bank Statement Line. You must enter a business partner or invoice in the bank statement line before proceeding.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'CreatePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CreatePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', '','','Create Payment'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CreatePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Create Payment' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CreatePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CreatePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', '','','Create Payment'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CreatePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Create Payment' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CreatePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Currency',
'The Currency for this record',
22,
'',
'8959',
'Indicates the Currency to be used when processing or reporting on this record',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Currency', description = 'The Currency for this record', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'Indicates the Currency to be used when processing or reporting on this record', obscuretype = '', seqno = 130, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'The Currency for this record','Indicates the Currency to be used when processing or reporting on this record','Currency'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The Currency for this record',Help = 'Indicates the Currency to be used when processing or reporting on this record',Name = 'Currency' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'The Currency for this record','Indicates the Currency to be used when processing or reporting on this record','Currency'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The Currency for this record',Help = 'Indicates the Currency to be used when processing or reporting on this record',Name = 'Currency' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Description',
'Optional short description of the record',
255,
'',
'8959',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Description', description = 'Optional short description of the record', displaylength = 255, displaylogic = '', entitytype = '8959', help = 'A description is limited to 255 characters.', obscuretype = '', seqno = 50, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Optional short description of the record','A description is limited to 255 characters.','Description'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Optional short description of the record',Help = 'A description is limited to 255 characters.',Name = 'Description' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Optional short description of the record','A description is limited to 255 characters.','Description'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Optional short description of the record',Help = 'A description is limited to 255 characters.',Name = 'Description' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'EftStatementReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Reference'),
(select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')),
'EFT Statement Reference',
'Electronic Funds Transfer Statement Reference',
20,
'',
'8959',
'Information from EFT media',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'EftStatementReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Reference'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')), name = 'EFT Statement Reference', description = 'Electronic Funds Transfer Statement Reference', displaylength = 20, displaylogic = '', entitytype = '8959', help = 'Information from EFT media', obscuretype = '', seqno = 150, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'EftStatementReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftStatementReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftStatementReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftStatementReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftStatementReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'fr_FR', 'Y', 'Electronic Funds Transfer Statement Reference','Information from EFT media','EFT Statement Reference'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftStatementReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Electronic Funds Transfer Statement Reference',Help = 'Information from EFT media',Name = 'EFT Statement Reference' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftStatementReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Description',
'Optional short description of the record',
255,
'',
'8959',
'A description is limited to 255 characters.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Description', description = 'Optional short description of the record', displaylength = 255, displaylogic = '', entitytype = '8959', help = 'A description is limited to 255 characters.', obscuretype = '', seqno = 60, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Optional short description of the record','A description is limited to 255 characters.','Description'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Optional short description of the record',Help = 'A description is limited to 255 characters.',Name = 'Description' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Optional short description of the record','A description is limited to 255 characters.','Description'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Optional short description of the record',Help = 'A description is limited to 255 characters.',Name = 'Description' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ZCreateFromPaymentSelection' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Create From Payment Selection',
'',
1,
'',
'8959',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZCreateFromPaymentSelection' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Create From Payment Selection', description = '', displaylength = 1, displaylogic = '', entitytype = '8959', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZCreateFromPaymentSelection' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZCreateFromPaymentSelection' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', '','','Create From Payment Selection'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZCreateFromPaymentSelection' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Create From Payment Selection' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZCreateFromPaymentSelection' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZCreateFromPaymentSelection' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', '','','Create From Payment Selection'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZCreateFromPaymentSelection' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Create From Payment Selection' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZCreateFromPaymentSelection' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'CreateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Réconciliation paiements',
'Process which will generate a new document lines based on an existing document',
1,
'',
'8959',
'The Create From process will create a new document based on information in an existing document selected by the user.',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'CreateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Réconciliation paiements', description = 'Process which will generate a new document lines based on an existing document', displaylength = 1, displaylogic = '', entitytype = '8959', help = 'The Create From process will create a new document based on information in an existing document selected by the user.', obscuretype = '', seqno = 110, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'CreateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CreateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Process which will generate a new document lines based on an existing document','The Create From process will create a new document based on information in an existing document selected by the user.','Create lines from'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CreateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Process which will generate a new document lines based on an existing document',Help = 'The Create From process will create a new document based on information in an existing document selected by the user.',Name = 'Create lines from' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CreateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CreateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Process which will generate a new document lines based on an existing document','The Create From process will create a new document based on information in an existing document selected by the user.','Réconciliation paiements'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CreateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Process which will generate a new document lines based on an existing document',Help = 'The Create From process will create a new document based on information in an existing document selected by the user.',Name = 'Réconciliation paiements' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CreateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'CurrentBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Current Balance',
'Current Balance',
22,
'',
'8959',
'The Current Balance field indicates the current balance in this account.',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'CurrentBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Current Balance', description = 'Current Balance', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'The Current Balance field indicates the current balance in this account.', obscuretype = '', seqno = 90, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'CurrentBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CurrentBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Current Balance','The Current Balance field indicates the current balance in this account.','Current Balance'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CurrentBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Current Balance',Help = 'The Current Balance field indicates the current balance in this account.',Name = 'Current Balance' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CurrentBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CurrentBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Current Balance','The Current Balance field indicates the current balance in this account.','Current Balance'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CurrentBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Current Balance',Help = 'The Current Balance field indicates the current balance in this account.',Name = 'Current Balance' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CurrentBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')),
'Bank Account',
'Account at the Bank',
14,
'',
'8959',
'The Bank Account identifies an account at this Bank.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')), name = 'Bank Account', description = 'Account at the Bank', displaylength = 14, displaylogic = '', entitytype = '8959', help = 'The Bank Account identifies an account at this Bank.', obscuretype = '', seqno = 30, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'fr_FR', 'Y', 'Account at the Bank','The Bank Account identifies an account at this Bank.','Bank Account'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Account at the Bank',Help = 'The Bank Account identifies an account at this Bank.',Name = 'Bank Account' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Status'),
(select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Process Statement',
'-',
2,
'',
'8959',
'',
'',
200,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Status'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Process Statement', description = '-', displaylength = 2, displaylogic = '', entitytype = '8959', help = '', obscuretype = '', seqno = 200, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup','Document Action'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The targeted status of the document',Help = 'You find the current status in the Document Status field. The options are listed in a popup',Name = 'Document Action' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup','Document Action'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The targeted status of the document',Help = 'You find the current status in the Document Status field. The options are listed in a popup',Name = 'Document Action' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_BankStatementLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Bank statement line',
'Line on a statement from this Bank',
22,
'',
'8959',
'The Bank Statement Line identifies a unique transaction (Payment, Withdrawal, Interest or Charge) for the defined time period at this Bank.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BankStatementLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Bank statement line', description = 'Line on a statement from this Bank', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'The Bank Statement Line identifies a unique transaction (Payment, Withdrawal, Interest or Charge) for the defined time period at this Bank.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BankStatementLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankStatementLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Line on a statement from this Bank','The Bank Statement Line identifies a unique transaction (Payment, Withdrawal, Interest or Charge) for the defined time period at this Bank.','Bank statement line'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankStatementLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Line on a statement from this Bank',Help = 'The Bank Statement Line identifies a unique transaction (Payment, Withdrawal, Interest or Charge) for the defined time period at this Bank.',Name = 'Bank statement line' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankStatementLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankStatementLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Line on a statement from this Bank','The Bank Statement Line identifies a unique transaction (Payment, Withdrawal, Interest or Charge) for the defined time period at this Bank.','Bank statement line'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankStatementLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Line on a statement from this Bank',Help = 'The Bank Statement Line identifies a unique transaction (Payment, Withdrawal, Interest or Charge) for the defined time period at this Bank.',Name = 'Bank statement line' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankStatementLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Reference'),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Business Partner',
'Identifies a Business Partner',
22,
'',
'8959',
'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',
'',
170,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Reference'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Business Partner', description = 'Identifies a Business Partner', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', obscuretype = '', seqno = 170, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Business Partner'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies a Business Partner',Help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',Name = 'Business Partner' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Business Partner'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies a Business Partner',Help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',Name = 'Business Partner' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsApproved' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')),
'Approved',
'Indicates if this document requires approval',
1,
'',
'8959',
'The Approved checkbox indicates if this document requires approval before it can be processed.',
'',
190,
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsApproved' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')), name = 'Approved', description = 'Indicates if this document requires approval', displaylength = 1, displaylogic = '', entitytype = '8959', help = 'The Approved checkbox indicates if this document requires approval before it can be processed.', obscuretype = '', seqno = 190, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsApproved' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsApproved' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsApproved' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsApproved' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsApproved' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'fr_FR', 'Y', 'Indicates if this document requires approval','The Approved checkbox indicates if this document requires approval before it can be processed.','Approved'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsApproved' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Indicates if this document requires approval',Help = 'The Approved checkbox indicates if this document requires approval before it can be processed.',Name = 'Approved' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsApproved' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'EftStatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Reference'),
(select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')),
'EFT Statement Date',
'Electronic Funds Transfer Statement Date',
14,
'',
'8959',
'Information from EFT media',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'EftStatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Reference'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')), name = 'EFT Statement Date', description = 'Electronic Funds Transfer Statement Date', displaylength = 14, displaylogic = '', entitytype = '8959', help = 'Information from EFT media', obscuretype = '', seqno = 160, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'EftStatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftStatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftStatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftStatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftStatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'fr_FR', 'Y', 'Electronic Funds Transfer Statement Date','Information from EFT media','EFT Statement Date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftStatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Electronic Funds Transfer Statement Date',Help = 'Information from EFT media',Name = 'EFT Statement Date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftStatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Name',
'Alphanumeric identifier of the entity',
60,
'',
'8959',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Name', description = 'Alphanumeric identifier of the entity', displaylength = 60, displaylogic = '', entitytype = '8959', help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.', obscuretype = '', seqno = 40, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Alphanumeric identifier of the entity','The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.','Name'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Alphanumeric identifier of the entity',Help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.',Name = 'Name' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Alphanumeric identifier of the entity','The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.','Name'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Alphanumeric identifier of the entity',Help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.',Name = 'Name' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Organization',
'Organizational entity within Tenant',
22,
'',
'8959',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Organization', description = 'Organizational entity within Tenant', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', obscuretype = '', seqno = 20, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Organizational entity within Tenant','An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organizational entity within Tenant',Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Name = 'Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Organizational entity within Tenant','An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organizational entity within Tenant',Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Name = 'Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Status'),
(select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Posted',
'Posting status',
1,
'',
'8959',
'The Posted field indicates the status of the Generation of General Ledger Accounting Lines',
'',
210,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Status'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Posted', description = 'Posting status', displaylength = 1, displaylogic = '', entitytype = '8959', help = 'The Posted field indicates the status of the Generation of General Ledger Accounting Lines', obscuretype = '', seqno = 210, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Posting status','The Posted field indicates the status of the Generation of General Ledger Accounting Lines','Posted'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Posting status',Help = 'The Posted field indicates the status of the Generation of General Ledger Accounting Lines',Name = 'Posted' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Posting status','The Posted field indicates the status of the Generation of General Ledger Accounting Lines','Posted'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Posting status',Help = 'The Posted field indicates the status of the Generation of General Ledger Accounting Lines',Name = 'Posted' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Posted' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')),
'Process Statement',
'-',
23,
'',
'8959',
'',
'',
180,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')), name = 'Process Statement', description = '-', displaylength = 23, displaylogic = '', entitytype = '8959', help = '', obscuretype = '', seqno = 180, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'fr_FR', 'Y', '-','','Process Statement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '-',Help = '',Name = 'Process Statement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsManual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Manual',
'This is a manual process or entry',
1,
'',
'8959',
'The Manual check box indicates if the process or entry will be done manually.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsManual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Manual', description = 'This is a manual process or entry', displaylength = 1, displaylogic = '', entitytype = '8959', help = 'The Manual check box indicates if the process or entry will be done manually.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsManual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsManual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'This is a manual process or entry','The Manual check box indicates if the process or entry will be done manually.','Manual'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsManual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'This is a manual process or entry',Help = 'The Manual check box indicates if the process or entry will be done manually.',Name = 'Manual' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsManual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsManual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'This is a manual process or entry','The Manual check box indicates if the process or entry will be done manually.','Manual'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsManual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'This is a manual process or entry',Help = 'The Manual check box indicates if the process or entry will be done manually.',Name = 'Manual' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsManual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ZCreateFromDeliveryCheck' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Match Bank Delivery',
'',
1,
'',
'8959',
'',
'',
170,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZCreateFromDeliveryCheck' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Match Bank Delivery', description = '', displaylength = 1, displaylogic = '', entitytype = '8959', help = '', obscuretype = '', seqno = 170, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZCreateFromDeliveryCheck' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZCreateFromDeliveryCheck' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', '','','Match Bank Delivery'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZCreateFromDeliveryCheck' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Match Bank Delivery' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZCreateFromDeliveryCheck' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZCreateFromDeliveryCheck' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', '','','Match Bank Delivery'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZCreateFromDeliveryCheck' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Match Bank Delivery' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZCreateFromDeliveryCheck' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'MatchStatement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Match Bank Statement',
'Match Bank Statement Info to Business Partners, Invoices and Payments',
1,
'',
'8959',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'MatchStatement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Match Bank Statement', description = 'Match Bank Statement Info to Business Partners, Invoices and Payments', displaylength = 1, displaylogic = '', entitytype = '8959', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'MatchStatement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MatchStatement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', '','','Match Statement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MatchStatement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Match Statement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MatchStatement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MatchStatement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', '','','Match Statement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MatchStatement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Match Statement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MatchStatement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'GL_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')),
'GL Category',
'General Ledger Category',
10,
'',
'8959',
'The General Ledger Category is an optional, user defined method of grouping journal lines.',
'',
170,
0,
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'GL_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')), name = 'GL Category', description = 'General Ledger Category', displaylength = 10, displaylogic = '', entitytype = '8959', help = 'The General Ledger Category is an optional, user defined method of grouping journal lines.', obscuretype = '', seqno = 170, sortno = 0, isactive = 'N', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'GL_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'GL_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'GL_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'GL_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'GL_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'fr_FR', 'Y', 'General Ledger Category','The General Ledger Category is an optional, user defined method of grouping journal lines.','GL Category'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'GL_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'General Ledger Category',Help = 'The General Ledger Category is an optional, user defined method of grouping journal lines.',Name = 'GL Category' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'GL_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'StatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Statement date',
'Date of the statement',
7,
'',
'8959',
'The Statement Date field defines the date of the statement.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'StatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Statement date', description = 'Date of the statement', displaylength = 7, displaylogic = '', entitytype = '8959', help = 'The Statement Date field defines the date of the statement.', obscuretype = '', seqno = 50, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'StatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Date of the statement','The Statement Date field defines the date of the statement.','Statement date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Date of the statement',Help = 'The Statement Date field defines the date of the statement.',Name = 'Statement date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Date of the statement','The Statement Date field defines the date of the statement.','Statement date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Date of the statement',Help = 'The Statement Date field defines the date of the statement.',Name = 'Statement date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'StatementDifference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Statement difference',
'Difference between statement ending balance and actual ending balance',
22,
'',
'8959',
'The Statement Difference reflects the difference between the Statement Ending Balance and the Actual Ending Balance.',
'',
100,
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'StatementDifference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Statement difference', description = 'Difference between statement ending balance and actual ending balance', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'The Statement Difference reflects the difference between the Statement Ending Balance and the Actual Ending Balance.', obscuretype = '', seqno = 100, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'StatementDifference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StatementDifference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Difference between statement ending balance and actual ending balance','The Statement Difference reflects the difference between the Statement Ending Balance and the Actual Ending Balance.','Statement difference'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StatementDifference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Difference between statement ending balance and actual ending balance',Help = 'The Statement Difference reflects the difference between the Statement Ending Balance and the Actual Ending Balance.',Name = 'Statement difference' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StatementDifference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StatementDifference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Difference between statement ending balance and actual ending balance','The Statement Difference reflects the difference between the Statement Ending Balance and the Actual Ending Balance.','Statement difference'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StatementDifference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Difference between statement ending balance and actual ending balance',Help = 'The Statement Difference reflects the difference between the Statement Ending Balance and the Actual Ending Balance.',Name = 'Statement difference' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StatementDifference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')),
'Document Type',
'Document type or rules',
10,
'',
'8959',
'The Document Type determines document sequence and processing rules',
'',
180,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')), name = 'Document Type', description = 'Document type or rules', displaylength = 10, displaylogic = '', entitytype = '8959', help = 'The Document Type determines document sequence and processing rules', obscuretype = '', seqno = 180, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'fr_FR', 'Y', 'Document type or rules','The Document Type determines document sequence and processing rules','Document Type'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Document type or rules',Help = 'The Document Type determines document sequence and processing rules',Name = 'Document Type' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Status'),
(select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')),
'Document Status',
'The current status of the document',
14,
'',
'8959',
'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Status'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')), name = 'Document Status', description = 'The current status of the document', displaylength = 14, displaylogic = '', entitytype = '8959', help = 'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field', obscuretype = '', seqno = 170, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'fr_FR', 'Y', 'The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Document Status'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The current status of the document',Help = 'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',Name = 'Document Status' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Tenant',
'Identifies the Client/Tenant for this installation.',
22,
'',
'8959',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Tenant', description = 'Identifies the Client/Tenant for this installation.', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', obscuretype = '', seqno = 10, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Identifies the Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Tenant'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies the Client/Tenant for this installation.',Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Name = 'Tenant' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Identifies the Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Tenant'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies the Client/Tenant for this installation.',Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Name = 'Tenant' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Charge',
'Additional document charges',
22,
'',
'8959',
'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Charge', description = 'Additional document charges', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Additional document charges','The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)','Charge'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Additional document charges',Help = 'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)',Name = 'Charge' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Additional document charges','The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)','Charge'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Additional document charges',Help = 'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)',Name = 'Charge' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Document Type',
'Document type or rules',
22,
'',
'8959',
'The Document Type determines document sequence and processing rules',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Document Type', description = 'Document type or rules', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'The Document Type determines document sequence and processing rules', obscuretype = '', seqno = 160, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Document type or rules','The Document Type determines document sequence and processing rules','Document Type'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Document type or rules',Help = 'The Document Type determines document sequence and processing rules',Name = 'Document Type' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Document type or rules','The Document Type determines document sequence and processing rules','Document Type'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Document type or rules',Help = 'The Document Type determines document sequence and processing rules',Name = 'Document Type' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ZCreateFromDeliveryCheck' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')),
'Match Bank Delivery',
'',
23,
'',
'8959',
'',
'',
135,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZCreateFromDeliveryCheck' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')), name = 'Match Bank Delivery', description = '', displaylength = 23, displaylogic = '', entitytype = '8959', help = '', obscuretype = '', seqno = 135, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZCreateFromDeliveryCheck' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZCreateFromDeliveryCheck' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZCreateFromDeliveryCheck' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZCreateFromDeliveryCheck' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZCreateFromDeliveryCheck' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'fr_FR', 'Y', '','','Match Bank Delivery'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZCreateFromDeliveryCheck' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Match Bank Delivery' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZCreateFromDeliveryCheck' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ZCreateFromPaymentSelection' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')),
'Create From Payment Selection',
'',
23,
'',
'8959',
'',
'',
137,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZCreateFromPaymentSelection' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')), name = 'Create From Payment Selection', description = '', displaylength = 23, displaylogic = '', entitytype = '8959', help = '', obscuretype = '', seqno = 137, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZCreateFromPaymentSelection' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZCreateFromPaymentSelection' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZCreateFromPaymentSelection' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZCreateFromPaymentSelection' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZCreateFromPaymentSelection' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'fr_FR', 'Y', '','','Create From Payment Selection'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZCreateFromPaymentSelection' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Create From Payment Selection' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZCreateFromPaymentSelection' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Status'),
(select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Document Status',
'The current status of the document',
2,
'',
'8959',
'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',
'',
180,
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Status'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Document Status', description = 'The current status of the document', displaylength = 2, displaylogic = '', entitytype = '8959', help = 'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field', obscuretype = '', seqno = 180, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Document Status'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The current status of the document',Help = 'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',Name = 'Document Status' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Document Status'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The current status of the document',Help = 'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',Name = 'Document Status' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Status'),
(select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Document Type',
'Document type or rules',
22,
'',
'8959',
'The Document Type determines document sequence and processing rules',
'',
190,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Status'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Document Type', description = 'Document type or rules', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'The Document Type determines document sequence and processing rules', obscuretype = '', seqno = 190, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Document type or rules','The Document Type determines document sequence and processing rules','Document Type'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Document type or rules',Help = 'The Document Type determines document sequence and processing rules',Name = 'Document Type' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Document type or rules','The Document Type determines document sequence and processing rules','Document Type'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Document type or rules',Help = 'The Document Type determines document sequence and processing rules',Name = 'Document Type' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'EftStatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'EFT Statement Date',
'Electronic Funds Transfer Statement Date',
7,
'',
'8959',
'Information from EFT media',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'EftStatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'EFT Statement Date', description = 'Electronic Funds Transfer Statement Date', displaylength = 7, displaylogic = '', entitytype = '8959', help = 'Information from EFT media', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'EftStatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftStatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Electronic Funds Transfer Statement Date','Information from EFT media','EFT Statement Date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftStatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Electronic Funds Transfer Statement Date',Help = 'Information from EFT media',Name = 'EFT Statement Date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftStatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftStatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Electronic Funds Transfer Statement Date','Information from EFT media','EFT Statement Date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftStatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Electronic Funds Transfer Statement Date',Help = 'Information from EFT media',Name = 'EFT Statement Date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftStatementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'EftStatementReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'EFT Statement Reference',
'Electronic Funds Transfer Statement Reference',
60,
'',
'8959',
'Information from EFT media',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'EftStatementReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'EFT Statement Reference', description = 'Electronic Funds Transfer Statement Reference', displaylength = 60, displaylogic = '', entitytype = '8959', help = 'Information from EFT media', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'EftStatementReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftStatementReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Electronic Funds Transfer Statement Reference','Information from EFT media','EFT Statement Reference'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftStatementReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Electronic Funds Transfer Statement Reference',Help = 'Information from EFT media',Name = 'EFT Statement Reference' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftStatementReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftStatementReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Electronic Funds Transfer Statement Reference','Information from EFT media','EFT Statement Reference'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftStatementReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Electronic Funds Transfer Statement Reference',Help = 'Information from EFT media',Name = 'EFT Statement Reference' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftStatementReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'CurrentBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')),
'Current Balance',
'Current Balance',
22,
'',
'8959',
'The Current Balance field indicates the current balance in this account.',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'CurrentBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Bank Statement_328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')), name = 'Current Balance', description = 'Current Balance', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'The Current Balance field indicates the current balance in this account.', obscuretype = '', seqno = 100, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'CurrentBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CurrentBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CurrentBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CurrentBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CurrentBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'fr_FR', 'Y', 'Current Balance','The Current Balance field indicates the current balance in this account.','Current Balance'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CurrentBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Current Balance',Help = 'The Current Balance field indicates the current balance in this account.',Name = 'Current Balance' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CurrentBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Statement_328' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'EftValutaDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'EFT Effective Date',
'Electronic Funds Transfer Value (effective) Date',
7,
'',
'8959',
'Information from EFT media',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'EftValutaDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'EFT Effective Date', description = 'Electronic Funds Transfer Value (effective) Date', displaylength = 7, displaylogic = '', entitytype = '8959', help = 'Information from EFT media', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'EftValutaDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftValutaDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Electronic Funds Transfer Value (effective) Date','Information from EFT media','EFT Effective Date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftValutaDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Electronic Funds Transfer Value (effective) Date',Help = 'Information from EFT media',Name = 'EFT Effective Date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftValutaDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftValutaDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Electronic Funds Transfer Value (effective) Date','Information from EFT media','EFT Effective Date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftValutaDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Electronic Funds Transfer Value (effective) Date',Help = 'Information from EFT media',Name = 'EFT Effective Date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftValutaDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'EftMemo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'EFT Memo',
'Electronic Funds Transfer Memo',
2000,
'',
'8959',
'Information from EFT media',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'EftMemo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'EFT Memo', description = 'Electronic Funds Transfer Memo', displaylength = 2000, displaylogic = '', entitytype = '8959', help = 'Information from EFT media', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'EftMemo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftMemo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Electronic Funds Transfer Memo','Information from EFT media','EFT Memo'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftMemo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Electronic Funds Transfer Memo',Help = 'Information from EFT media',Name = 'EFT Memo' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftMemo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftMemo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Electronic Funds Transfer Memo','Information from EFT media','EFT Memo'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftMemo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Electronic Funds Transfer Memo',Help = 'Information from EFT media',Name = 'EFT Memo' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftMemo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'EftPayee' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'EFT Payee',
'Electronic Funds Transfer Payee information',
255,
'',
'8959',
'Information from EFT media',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'EftPayee' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'EFT Payee', description = 'Electronic Funds Transfer Payee information', displaylength = 255, displaylogic = '', entitytype = '8959', help = 'Information from EFT media', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'EftPayee' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftPayee' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Electronic Funds Transfer Payee information','Information from EFT media','EFT Payee'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftPayee' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Electronic Funds Transfer Payee information',Help = 'Information from EFT media',Name = 'EFT Payee' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftPayee' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftPayee' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Electronic Funds Transfer Payee information','Information from EFT media','EFT Payee'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftPayee' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Electronic Funds Transfer Payee information',Help = 'Information from EFT media',Name = 'EFT Payee' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftPayee' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'EftPayeeAccount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'EFT Payee Account',
'Electronic Funds Transfer Payee Account Information',
40,
'',
'8959',
'Information from EFT media',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'EftPayeeAccount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'EFT Payee Account', description = 'Electronic Funds Transfer Payee Account Information', displaylength = 40, displaylogic = '', entitytype = '8959', help = 'Information from EFT media', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'EftPayeeAccount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftPayeeAccount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Electronic Funds Transfer Payee Account Information','Information from EFT media','EFT Payee Account'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftPayeeAccount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Electronic Funds Transfer Payee Account Information',Help = 'Information from EFT media',Name = 'EFT Payee Account' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftPayeeAccount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftPayeeAccount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Electronic Funds Transfer Payee Account Information','Information from EFT media','EFT Payee Account'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftPayeeAccount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Electronic Funds Transfer Payee Account Information',Help = 'Information from EFT media',Name = 'EFT Payee Account' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftPayeeAccount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'EftReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'EFT Reference',
'Electronic Funds Transfer Reference',
60,
'',
'8959',
'Information from EFT media',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'EftReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'EFT Reference', description = 'Electronic Funds Transfer Reference', displaylength = 60, displaylogic = '', entitytype = '8959', help = 'Information from EFT media', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'EftReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Electronic Funds Transfer Reference','Information from EFT media','EFT Reference'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Electronic Funds Transfer Reference',Help = 'Information from EFT media',Name = 'EFT Reference' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Electronic Funds Transfer Reference','Information from EFT media','EFT Reference'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Electronic Funds Transfer Reference',Help = 'Information from EFT media',Name = 'EFT Reference' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'EndingBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Ending Balance',
'Ending or Closing Balance',
22,
'',
'8959',
'The Ending Balance is the result of adjusting the Beginning Balance by any payments or disbursements.',
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
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'EndingBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Ending Balance', description = 'Ending or Closing Balance', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'The Ending Balance is the result of adjusting the Beginning Balance by any payments or disbursements.', obscuretype = '', seqno = 160, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'EndingBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EndingBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Ending or Closing Balance','The Ending Balance is the result of adjusting the Beginning Balance by any payments or disbursements.','Ending Balance'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EndingBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Ending or Closing Balance',Help = 'The Ending Balance is the result of adjusting the Beginning Balance by any payments or disbursements.',Name = 'Ending Balance' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EndingBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EndingBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Ending or Closing Balance','The Ending Balance is the result of adjusting the Beginning Balance by any payments or disbursements.','Ending Balance'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EndingBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Ending or Closing Balance',Help = 'The Ending Balance is the result of adjusting the Beginning Balance by any payments or disbursements.',Name = 'Ending Balance' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EndingBalance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ValutaDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Effective date',
'Date when money is available',
7,
'',
'8959',
'The Effective Date indicates the date that money is available from the bank.',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ValutaDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Effective date', description = 'Date when money is available', displaylength = 7, displaylogic = '', entitytype = '8959', help = 'The Effective Date indicates the date that money is available from the bank.', obscuretype = '', seqno = 90, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ValutaDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValutaDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Date when money is available','The Effective Date indicates the date that money is available from the bank.','Effective date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValutaDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Date when money is available',Help = 'The Effective Date indicates the date that money is available from the bank.',Name = 'Effective date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValutaDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValutaDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Date when money is available','The Effective Date indicates the date that money is available from the bank.','Effective date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValutaDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Date when money is available',Help = 'The Effective Date indicates the date that money is available from the bank.',Name = 'Effective date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValutaDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'EftAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'EFT Amount',
'Electronic Funds Transfer Amount',
22,
'',
'8959',
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
'Y',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'EftAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'EFT Amount', description = 'Electronic Funds Transfer Amount', displaylength = 22, displaylogic = '', entitytype = '8959', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'EftAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Electronic Funds Transfer Amount','','EFT Amount'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Electronic Funds Transfer Amount',Help = '',Name = 'EFT Amount' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Electronic Funds Transfer Amount','','EFT Amount'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Electronic Funds Transfer Amount',Help = '',Name = 'EFT Amount' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'EftCheckNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'EFT Check No',
'Electronic Funds Transfer Check No',
20,
'',
'8959',
'Information from EFT media',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'EftCheckNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'EFT Check No', description = 'Electronic Funds Transfer Check No', displaylength = 20, displaylogic = '', entitytype = '8959', help = 'Information from EFT media', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'EftCheckNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftCheckNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Electronic Funds Transfer Check No','Information from EFT media','EFT Check No'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftCheckNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Electronic Funds Transfer Check No',Help = 'Information from EFT media',Name = 'EFT Check No' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftCheckNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftCheckNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Electronic Funds Transfer Check No','Information from EFT media','EFT Check No'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftCheckNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Electronic Funds Transfer Check No',Help = 'Information from EFT media',Name = 'EFT Check No' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftCheckNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'EftCurrency' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'EFT Currency',
'Electronic Funds Transfer Currency',
20,
'',
'8959',
'Information from EFT media',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'EftCurrency' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'EFT Currency', description = 'Electronic Funds Transfer Currency', displaylength = 20, displaylogic = '', entitytype = '8959', help = 'Information from EFT media', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'EftCurrency' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftCurrency' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Electronic Funds Transfer Currency','Information from EFT media','EFT Currency'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftCurrency' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Electronic Funds Transfer Currency',Help = 'Information from EFT media',Name = 'EFT Currency' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftCurrency' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftCurrency' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Electronic Funds Transfer Currency','Information from EFT media','EFT Currency'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftCurrency' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Electronic Funds Transfer Currency',Help = 'Information from EFT media',Name = 'EFT Currency' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftCurrency' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Payment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Payment',
'Payment identifier',
22,
'',
'8959',
'The Payment is a unique identifier of this payment.',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Payment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Payment', description = 'Payment identifier', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'The Payment is a unique identifier of this payment.', obscuretype = '', seqno = 110, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Payment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Payment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Payment identifier','The Payment is a unique identifier of this payment.','Payment'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Payment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Payment identifier',Help = 'The Payment is a unique identifier of this payment.',Name = 'Payment' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Payment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Payment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Payment identifier','The Payment is a unique identifier of this payment.','Payment'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Payment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Payment identifier',Help = 'The Payment is a unique identifier of this payment.',Name = 'Payment' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Payment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Processed',
'The document has been processed',
1,
'',
'8959',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Processed', description = 'The document has been processed', displaylength = 1, displaylogic = '', entitytype = '8959', help = 'The Processed checkbox indicates that a document has been processed.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'The document has been processed','The Processed checkbox indicates that a document has been processed.','Processed'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The document has been processed',Help = 'The Processed checkbox indicates that a document has been processed.',Name = 'Processed' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'The document has been processed','The Processed checkbox indicates that a document has been processed.','Processed'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The document has been processed',Help = 'The Processed checkbox indicates that a document has been processed.',Name = 'Processed' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Project_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Project',
'Financial Project',
22,
'',
'8959',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Project_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Project', description = 'Financial Project', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'A Project allows you to track and control internal or external activities.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Project_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Project_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Financial Project','A Project allows you to track and control internal or external activities.','Project'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Project_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Financial Project',Help = 'A Project allows you to track and control internal or external activities.',Name = 'Project' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Project_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Project_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Financial Project','A Project allows you to track and control internal or external activities.','Project'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Project_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Financial Project',Help = 'A Project allows you to track and control internal or external activities.',Name = 'Project' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Project_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_ConversionType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Rate Type',
'Currency Conversion Rate Type',
22,
'',
'8959',
'The Currency Conversion Rate Type lets you define different type of rates, e.g. Spot, Corporate and/or Sell/Buy rates.',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_ConversionType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Rate Type', description = 'Currency Conversion Rate Type', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'The Currency Conversion Rate Type lets you define different type of rates, e.g. Spot, Corporate and/or Sell/Buy rates.', obscuretype = '', seqno = 140, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_ConversionType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_ConversionType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Currency Conversion Rate Type','The Currency Conversion Rate Type lets you define different type of rates, e.g. Spot, Corporate and/or Sell/Buy rates.','Rate Type'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_ConversionType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Currency Conversion Rate Type',Help = 'The Currency Conversion Rate Type lets you define different type of rates, e.g. Spot, Corporate and/or Sell/Buy rates.',Name = 'Rate Type' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_ConversionType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_ConversionType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Currency Conversion Rate Type','The Currency Conversion Rate Type lets you define different type of rates, e.g. Spot, Corporate and/or Sell/Buy rates.','Rate Type'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_ConversionType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Currency Conversion Rate Type',Help = 'The Currency Conversion Rate Type lets you define different type of rates, e.g. Spot, Corporate and/or Sell/Buy rates.',Name = 'Rate Type' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_ConversionType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ReferenceNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Reference No',
'Your customer or vendor number at the Business Partner''s site',
40,
'',
'8959',
'The reference number can be printed on orders and invoices to allow your business partner to faster identify your records.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ReferenceNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Reference No', description = 'Your customer or vendor number at the Business Partner''s site', displaylength = 40, displaylogic = '', entitytype = '8959', help = 'The reference number can be printed on orders and invoices to allow your business partner to faster identify your records.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ReferenceNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ReferenceNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Your customer or vendor number at the Business Partner''s site','The reference number can be printed on orders and invoices to allow your business partner to faster identify your records.','Reference No'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ReferenceNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Your customer or vendor number at the Business Partner''s site',Help = 'The reference number can be printed on orders and invoices to allow your business partner to faster identify your records.',Name = 'Reference No' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ReferenceNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ReferenceNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Your customer or vendor number at the Business Partner''s site','The reference number can be printed on orders and invoices to allow your business partner to faster identify your records.','Reference No'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ReferenceNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Your customer or vendor number at the Business Partner''s site',Help = 'The reference number can be printed on orders and invoices to allow your business partner to faster identify your records.',Name = 'Reference No' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ReferenceNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsReversal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Reversal',
'This is a reversing transaction',
1,
'',
'8959',
'The Reversal check box indicates if this is a reversal of a prior transaction.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsReversal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Reversal', description = 'This is a reversing transaction', displaylength = 1, displaylogic = '', entitytype = '8959', help = 'The Reversal check box indicates if this is a reversal of a prior transaction.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsReversal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsReversal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'This is a reversing transaction','The Reversal check box indicates if this is a reversal of a prior transaction.','Reversal'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsReversal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'This is a reversing transaction',Help = 'The Reversal check box indicates if this is a reversal of a prior transaction.',Name = 'Reversal' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsReversal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsReversal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'This is a reversing transaction','The Reversal check box indicates if this is a reversal of a prior transaction.','Reversal'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsReversal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'This is a reversing transaction',Help = 'The Reversal check box indicates if this is a reversal of a prior transaction.',Name = 'Reversal' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsReversal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'StmtAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Statement amount',
'Statement Amount',
22,
'',
'8959',
'The Statement Amount indicates the amount of a single statement line.',
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
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'StmtAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Statement amount', description = 'Statement Amount', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'The Statement Amount indicates the amount of a single statement line.', obscuretype = '', seqno = 100, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'StmtAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StmtAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Statement Amount','The Statement Amount indicates the amount of a single statement line.','Statement amount'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StmtAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Statement Amount',Help = 'The Statement Amount indicates the amount of a single statement line.',Name = 'Statement amount' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StmtAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StmtAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Statement Amount','The Statement Amount indicates the amount of a single statement line.','Statement amount'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StmtAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Statement Amount',Help = 'The Statement Amount indicates the amount of a single statement line.',Name = 'Statement amount' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StmtAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'StatementLineDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Statement Line Date',
'Date of the Statement Line',
7,
'',
'8959',
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
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'StatementLineDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Statement Line Date', description = 'Date of the Statement Line', displaylength = 7, displaylogic = '', entitytype = '8959', help = '', obscuretype = '', seqno = 70, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'StatementLineDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StatementLineDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Date of the Statement Line','','Statement Line Date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StatementLineDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Date of the Statement Line',Help = '',Name = 'Statement Line Date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StatementLineDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StatementLineDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Date of the Statement Line','','Statement Line Date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StatementLineDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Date of the Statement Line',Help = '',Name = 'Statement Line Date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'StatementLineDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Tenant',
'Identifies the Client/Tenant for this installation.',
22,
'',
'8959',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Tenant', description = 'Identifies the Client/Tenant for this installation.', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', obscuretype = '', seqno = 10, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Identifies the Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Tenant'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies the Client/Tenant for this installation.',Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Name = 'Tenant' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Identifies the Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Tenant'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies the Client/Tenant for this installation.',Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Name = 'Tenant' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'TrxAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Transaction Amount',
'Amount of a transaction',
22,
'',
'8959',
'The Transaction Amount indicates the amount for a single transaction.',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'TrxAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Transaction Amount', description = 'Amount of a transaction', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'The Transaction Amount indicates the amount for a single transaction.', obscuretype = '', seqno = 120, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'TrxAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TrxAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Amount of a transaction','The Transaction Amount indicates the amount for a single transaction.','Transaction Amount'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TrxAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Amount of a transaction',Help = 'The Transaction Amount indicates the amount for a single transaction.',Name = 'Transaction Amount' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TrxAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TrxAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Amount of a transaction','The Transaction Amount indicates the amount for a single transaction.','Transaction Amount'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TrxAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Amount of a transaction',Help = 'The Transaction Amount indicates the amount for a single transaction.',Name = 'Transaction Amount' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TrxAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'User1_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'User List 1',
'User defined list element #1',
22,
'',
'8959',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'User1_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'User List 1', description = 'User defined list element #1', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'The user defined element displays the optional elements that have been defined for this account combination.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'User1_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'User1_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'User defined list element #1','The user defined element displays the optional elements that have been defined for this account combination.','User List 1'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'User1_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'User defined list element #1',Help = 'The user defined element displays the optional elements that have been defined for this account combination.',Name = 'User List 1' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'User1_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'User1_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'User defined list element #1','The user defined element displays the optional elements that have been defined for this account combination.','User List 1'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'User1_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'User defined list element #1',Help = 'The user defined element displays the optional elements that have been defined for this account combination.',Name = 'User List 1' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'User1_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')),
'Account Date',
'General Ledger Date',
7,
'',
'8959',
'The Account Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')), name = 'Account Date', description = 'General Ledger Date', displaylength = 7, displaylogic = '', entitytype = '8959', help = 'The Account Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.', obscuretype = '', seqno = 50, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'nl_BE', 'Y', 'General Ledger Date','The Account Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','Account Date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'General Ledger Date',Help = 'The Account Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.',Name = 'Account Date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'fr_FR', 'Y', 'General Ledger Date','The Account Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','Account Date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'General Ledger Date',Help = 'The Account Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.',Name = 'Account Date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')),
'Active',
'The record is active in the system',
1,
'',
'8959',
'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')), name = 'Active', description = 'The record is active in the system', displaylength = 1, displaylogic = '', entitytype = '8959', help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', obscuretype = '', seqno = 80, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'nl_BE', 'Y', 'The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The record is active in the system',Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Name = 'Active' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'fr_FR', 'Y', 'The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The record is active in the system',Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Name = 'Active' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'),
(select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')),
'Bank Account',
'Account at the Bank',
22,
'',
'8959',
'The Bank Account identifies an account at this Bank.',
'',
190,
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')), name = 'Bank Account', description = 'Account at the Bank', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'The Bank Account identifies an account at this Bank.', obscuretype = '', seqno = 190, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'nl_BE', 'Y', 'Account at the Bank','The Bank Account identifies an account at this Bank.','Bank Account'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Account at the Bank',Help = 'The Bank Account identifies an account at this Bank.',Name = 'Bank Account' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'fr_FR', 'Y', 'Account at the Bank','The Bank Account identifies an account at this Bank.','Bank Account'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Account at the Bank',Help = 'The Bank Account identifies an account at this Bank.',Name = 'Bank Account' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement out'),
(select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')),
'Bank Account',
'Account at the Bank',
22,
'',
'8959',
'The Bank Account identifies an account at this Bank.',
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement out'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')), name = 'Bank Account', description = 'Account at the Bank', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'The Bank Account identifies an account at this Bank.', obscuretype = '', seqno = 130, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'nl_BE', 'Y', 'Account at the Bank','The Bank Account identifies an account at this Bank.','Bank Account'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Account at the Bank',Help = 'The Bank Account identifies an account at this Bank.',Name = 'Bank Account' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'fr_FR', 'Y', 'Account at the Bank','The Bank Account identifies an account at this Bank.','Bank Account'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Account at the Bank',Help = 'The Bank Account identifies an account at this Bank.',Name = 'Bank Account' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement out'),
(select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')),
'Charge',
'Additional document charges',
22,
'',
'8959',
'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)',
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement out'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')), name = 'Charge', description = 'Additional document charges', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)', obscuretype = '', seqno = 160, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'nl_BE', 'Y', 'Additional document charges','The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)','Charge'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Additional document charges',Help = 'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)',Name = 'Charge' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'fr_FR', 'Y', 'Additional document charges','The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)','Charge'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Additional document charges',Help = 'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)',Name = 'Charge' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'),
(select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')),
'Charge',
'Additional document charges',
22,
'',
'8959',
'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)',
'',
220,
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')), name = 'Charge', description = 'Additional document charges', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)', obscuretype = '', seqno = 220, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'nl_BE', 'Y', 'Additional document charges','The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)','Charge'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Additional document charges',Help = 'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)',Name = 'Charge' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'fr_FR', 'Y', 'Additional document charges','The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)','Charge'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Additional document charges',Help = 'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)',Name = 'Charge' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Amounts'),
(select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')),
'Currency',
'The Currency for this record',
22,
'',
'8959',
'Indicates the Currency to be used when processing or reporting on this record',
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Amounts'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')), name = 'Currency', description = 'The Currency for this record', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'Indicates the Currency to be used when processing or reporting on this record', obscuretype = '', seqno = 110, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'nl_BE', 'Y', 'The Currency for this record','Indicates the Currency to be used when processing or reporting on this record','Currency'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The Currency for this record',Help = 'Indicates the Currency to be used when processing or reporting on this record',Name = 'Currency' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'fr_FR', 'Y', 'The Currency for this record','Indicates the Currency to be used when processing or reporting on this record','Currency'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The Currency for this record',Help = 'Indicates the Currency to be used when processing or reporting on this record',Name = 'Currency' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')),
'Description',
'Optional short description of the record',
30,
'',
'8959',
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')), name = 'Description', description = 'Optional short description of the record', displaylength = 30, displaylogic = '', entitytype = '8959', help = 'A description is limited to 255 characters.', obscuretype = '', seqno = 70, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'nl_BE', 'Y', 'Optional short description of the record','A description is limited to 255 characters.','Description'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Optional short description of the record',Help = 'A description is limited to 255 characters.',Name = 'Description' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'fr_FR', 'Y', 'Optional short description of the record','A description is limited to 255 characters.','Description'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Optional short description of the record',Help = 'A description is limited to 255 characters.',Name = 'Description' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Status'),
(select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')),
'Process Bank Transfert',
'',
2,
'',
'8959',
'',
'',
250,
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Status'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')), name = 'Process Bank Transfert', description = '', displaylength = 2, displaylogic = '', entitytype = '8959', help = '', obscuretype = '', seqno = 250, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'nl_BE', 'Y', 'The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup','Document Action'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The targeted status of the document',Help = 'You find the current status in the Document Status field. The options are listed in a popup',Name = 'Document Action' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'fr_FR', 'Y', 'The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup','Document Action'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The targeted status of the document',Help = 'You find the current status in the Document Status field. The options are listed in a popup',Name = 'Document Action' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')),
'Document No',
'Document sequence number of the document',
30,
'',
'8959',
'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')), name = 'Document No', description = 'Document sequence number of the document', displaylength = 30, displaylogic = '', entitytype = '8959', help = 'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', obscuretype = '', seqno = 30, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'nl_BE', 'Y', 'Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Document No'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Document sequence number of the document',Help = 'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',Name = 'Document No' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'fr_FR', 'Y', 'Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Document No'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Document sequence number of the document',Help = 'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',Name = 'Document No' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Status'),
(select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')),
'Document Status',
'The current status of the document',
2,
'',
'8959',
'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',
'',
240,
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Status'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')), name = 'Document Status', description = 'The current status of the document', displaylength = 2, displaylogic = '', entitytype = '8959', help = 'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field', obscuretype = '', seqno = 240, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'nl_BE', 'Y', 'The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Document Status'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The current status of the document',Help = 'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',Name = 'Document Status' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'fr_FR', 'Y', 'The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Document Status'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The current status of the document',Help = 'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',Name = 'Document Status' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'),
(select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')),
'Document Type',
'Document type or rules',
22,
'',
'8959',
'The Document Type determines document sequence and processing rules',
'',
200,
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')), name = 'Document Type', description = 'Document type or rules', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'The Document Type determines document sequence and processing rules', obscuretype = '', seqno = 200, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'nl_BE', 'Y', 'Document type or rules','The Document Type determines document sequence and processing rules','Document Type'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Document type or rules',Help = 'The Document Type determines document sequence and processing rules',Name = 'Document Type' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'fr_FR', 'Y', 'Document type or rules','The Document Type determines document sequence and processing rules','Document Type'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Document type or rules',Help = 'The Document Type determines document sequence and processing rules',Name = 'Document Type' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')),
'Document Type',
'Document type or rules',
22,
'',
'8959',
'The Document Type determines document sequence and processing rules',
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
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')), name = 'Document Type', description = 'Document type or rules', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'The Document Type determines document sequence and processing rules', obscuretype = '', seqno = 20, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'nl_BE', 'Y', 'Document type or rules','The Document Type determines document sequence and processing rules','Document Type'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Document type or rules',Help = 'The Document Type determines document sequence and processing rules',Name = 'Document Type' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'fr_FR', 'Y', 'Document type or rules','The Document Type determines document sequence and processing rules','Document Type'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Document type or rules',Help = 'The Document Type determines document sequence and processing rules',Name = 'Document Type' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')),
'Due Date',
'Date when the payment is due',
7,
'',
'8959',
'Date when the payment is due without deductions or discount',
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')), name = 'Due Date', description = 'Date when the payment is due', displaylength = 7, displaylogic = '', entitytype = '8959', help = 'Date when the payment is due without deductions or discount', obscuretype = '', seqno = 60, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'nl_BE', 'Y', 'Date when the payment is due','Date when the payment is due without deductions or discount','Due Date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Date when the payment is due',Help = 'Date when the payment is due without deductions or discount',Name = 'Due Date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'fr_FR', 'Y', 'Date when the payment is due','Date when the payment is due without deductions or discount','Due Date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Date when the payment is due',Help = 'Date when the payment is due without deductions or discount',Name = 'Due Date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'),
(select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')),
'Inter-Organization',
'Organization valid for intercompany documents',
22,
'',
'8959',
'The Inter Organization field identifies an Organization which can be used by this Organization for intercompany documents.',
'',
180,
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')), name = 'Inter-Organization', description = 'Organization valid for intercompany documents', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'The Inter Organization field identifies an Organization which can be used by this Organization for intercompany documents.', obscuretype = '', seqno = 180, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'nl_BE', 'Y', 'Organization valid for intercompany documents','The Inter Organization field identifies an Organization which can be used by this Organization for intercompany documents.','Inter-Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organization valid for intercompany documents',Help = 'The Inter Organization field identifies an Organization which can be used by this Organization for intercompany documents.',Name = 'Inter-Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'fr_FR', 'Y', 'Organization valid for intercompany documents','The Inter Organization field identifies an Organization which can be used by this Organization for intercompany documents.','Inter-Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organization valid for intercompany documents',Help = 'The Inter Organization field identifies an Organization which can be used by this Organization for intercompany documents.',Name = 'Inter-Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_VirementIn_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'),
(select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')),
'N° Virement',
'Le n° de l?enregistrement « IN » créé dans C_Payment.',
22,
'',
'8959',
'',
'',
230,
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_VirementIn_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')), name = 'N° Virement', description = 'Le n° de l?enregistrement « IN » créé dans C_Payment.', displaylength = 22, displaylogic = '', entitytype = '8959', help = '', obscuretype = '', seqno = 230, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_VirementIn_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_VirementIn_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'nl_BE', 'Y', 'Le n° de l?enregistrement « IN » créé dans C_Payment.','','N° Virement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_VirementIn_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Le n° de l?enregistrement « IN » créé dans C_Payment.',Help = '',Name = 'N° Virement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_VirementIn_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_VirementIn_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'fr_FR', 'Y', 'Le n° de l?enregistrement « IN » créé dans C_Payment.','','N° Virement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_VirementIn_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Le n° de l?enregistrement « IN » créé dans C_Payment.',Help = '',Name = 'N° Virement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_VirementIn_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_VirementOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement out'),
(select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')),
'N° Virement',
'Le n° de l?enregistrement « OUT » créé dans C_Payment.',
22,
'',
'8959',
'',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_VirementOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement out'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')), name = 'N° Virement', description = 'Le n° de l?enregistrement « OUT » créé dans C_Payment.', displaylength = 22, displaylogic = '', entitytype = '8959', help = '', obscuretype = '', seqno = 170, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_VirementOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_VirementOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'nl_BE', 'Y', 'Le n° de l?enregistrement « OUT » créé dans C_Payment.','','N° Virement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_VirementOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Le n° de l?enregistrement « OUT » créé dans C_Payment.',Help = '',Name = 'N° Virement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_VirementOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_VirementOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'fr_FR', 'Y', 'Le n° de l?enregistrement « OUT » créé dans C_Payment.','','N° Virement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_VirementOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Le n° de l?enregistrement « OUT » créé dans C_Payment.',Help = '',Name = 'N° Virement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_VirementOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement out'),
(select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')),
'Organization',
'Organizational entity within Tenant',
22,
'',
'8959',
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement out'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')), name = 'Organization', description = 'Organizational entity within Tenant', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', obscuretype = '', seqno = 120, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'nl_BE', 'Y', 'Organizational entity within Tenant','An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organizational entity within Tenant',Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Name = 'Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'fr_FR', 'Y', 'Organizational entity within Tenant','An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organizational entity within Tenant',Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Name = 'Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Amounts'),
(select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')),
'Payment amount',
'Amount being paid',
22,
'',
'8959',
'Indicates the amount this payment is for.  The payment amount can be for single or multiple invoices or a partial payment for an invoice.',
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
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Amounts'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')), name = 'Payment amount', description = 'Amount being paid', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'Indicates the amount this payment is for.  The payment amount can be for single or multiple invoices or a partial payment for an invoice.', obscuretype = '', seqno = 100, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'nl_BE', 'Y', 'Amount being paid','Indicates the amount this payment is for.  The payment amount can be for single or multiple invoices or a partial payment for an invoice.','Payment amount'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Amount being paid',Help = 'Indicates the amount this payment is for.  The payment amount can be for single or multiple invoices or a partial payment for an invoice.',Name = 'Payment amount' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'fr_FR', 'Y', 'Amount being paid','Indicates the amount this payment is for.  The payment amount can be for single or multiple invoices or a partial payment for an invoice.','Payment amount'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Amount being paid',Help = 'Indicates the amount this payment is for.  The payment amount can be for single or multiple invoices or a partial payment for an invoice.',Name = 'Payment amount' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_PreparePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')),
'Préparation Paiement',
'',
1,
'@DocStatus@=''CO''',
'8959',
'Pour chaque partie d?enregistrement (« transfert de » et « Transfert vers ») il faut créer des paiements.',
'',
260,
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_PreparePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')), name = 'Préparation Paiement', description = '', displaylength = 1, displaylogic = '@DocStatus@=''CO''', entitytype = '8959', help = 'Pour chaque partie d?enregistrement (« transfert de » et « Transfert vers ») il faut créer des paiements.', obscuretype = '', seqno = 260, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_PreparePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PreparePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'nl_BE', 'Y', 'Préparation Paiement','','Préparation Paiement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PreparePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Préparation Paiement',Help = '',Name = 'Préparation Paiement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PreparePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PreparePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'fr_FR', 'Y', 'Préparation Paiement','','Préparation Paiement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PreparePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Préparation Paiement',Help = '',Name = 'Préparation Paiement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PreparePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')),
'Process Now',
'',
1,
'',
'8959',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')), name = 'Process Now', description = '', displaylength = 1, displaylogic = '', entitytype = '8959', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'nl_BE', 'Y', '','','Process Now'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Process Now' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'fr_FR', 'Y', '','','Process Now'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Process Now' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')),
'Processed',
'The document has been processed',
1,
'',
'8959',
'The Processed checkbox indicates that a document has been processed.',
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')), name = 'Processed', description = 'The document has been processed', displaylength = 1, displaylogic = '', entitytype = '8959', help = 'The Processed checkbox indicates that a document has been processed.', obscuretype = '', seqno = 90, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'nl_BE', 'Y', 'The document has been processed','The Processed checkbox indicates that a document has been processed.','Processed'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The document has been processed',Help = 'The Processed checkbox indicates that a document has been processed.',Name = 'Processed' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'fr_FR', 'Y', 'The document has been processed','The Processed checkbox indicates that a document has been processed.','Processed'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The document has been processed',Help = 'The Processed checkbox indicates that a document has been processed.',Name = 'Processed' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'),
(select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')),
'Sub Payment Rule',
'',
22,
'',
'8959',
'',
'',
210,
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')), name = 'Sub Payment Rule', description = '', displaylength = 22, displaylogic = '', entitytype = '8959', help = '', obscuretype = '', seqno = 210, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'nl_BE', 'Y', '','','Sub Payment Rule'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sub Payment Rule' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'fr_FR', 'Y', '','','Sub Payment Rule'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sub Payment Rule' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement out'),
(select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')),
'Sub Payment Rule',
'',
22,
'',
'8959',
'',
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement out'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')), name = 'Sub Payment Rule', description = '', displaylength = 22, displaylogic = '', entitytype = '8959', help = '', obscuretype = '', seqno = 150, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'nl_BE', 'Y', '','','Sub Payment Rule'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sub Payment Rule' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'fr_FR', 'Y', '','','Sub Payment Rule'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sub Payment Rule' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')),
'Tenant',
'Identifies the Client/Tenant for this installation.',
22,
'',
'8959',
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')), name = 'Tenant', description = 'Identifies the Client/Tenant for this installation.', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', obscuretype = '', seqno = 10, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'nl_BE', 'Y', 'Identifies the Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Tenant'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies the Client/Tenant for this installation.',Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Name = 'Tenant' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'fr_FR', 'Y', 'Identifies the Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Tenant'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies the Client/Tenant for this installation.',Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Name = 'Tenant' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')),
'Transaction Date',
'Transaction Date',
7,
'',
'8959',
'The Transaction Date indicates the date of the transaction.',
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')), name = 'Transaction Date', description = 'Transaction Date', displaylength = 7, displaylogic = '', entitytype = '8959', help = 'The Transaction Date indicates the date of the transaction.', obscuretype = '', seqno = 40, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'nl_BE', 'Y', 'Transaction Date','The Transaction Date indicates the date of the transaction.','Transaction Date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Transaction Date',Help = 'The Transaction Date indicates the date of the transaction.',Name = 'Transaction Date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'fr_FR', 'Y', 'Transaction Date','The Transaction Date indicates the date of the transaction.','Transaction Date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Transaction Date',Help = 'The Transaction Date indicates the date of the transaction.',Name = 'Transaction Date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_BankTransfert_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')),
'Transfert de compte',
'',
22,
'',
'8959',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_BankTransfert_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')), name = 'Transfert de compte', description = '', displaylength = 22, displaylogic = '', entitytype = '8959', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_BankTransfert_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_BankTransfert_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'nl_BE', 'Y', 'Bank Transfert','','Bank Transfert'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_BankTransfert_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Bank Transfert',Help = '',Name = 'Bank Transfert' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_BankTransfert_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_BankTransfert_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'fr_FR', 'Y', '','','Transfert de compte'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_BankTransfert_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Transfert de compte' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_BankTransfert_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')),
'Type d''Operation',
'Type d''Operation',
22,
'',
'8959',
'Type d''Operation',
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Deposit Bank' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Deposit Bank')), name = 'Type d''Operation', description = 'Type d''Operation', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'Type d''Operation', obscuretype = '', seqno = 140, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'nl_BE', 'Y', 'Type d''Operation','Type d''Operation','Type d''Operation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Type d''Operation',Help = 'Type d''Operation',Name = 'Type d''Operation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))), 'fr_FR', 'Y', 'Type d''Operation','Type d''Operation','Type d''Operation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Type d''Operation',Help = 'Type d''Operation',Name = 'Type d''Operation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Deposit Bank' and ad_window_id in (select ad_window_id from ad_window where value = 'Deposit Bank'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'TransfertChequeFinancement_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Transfert Cheque/Financement',
'',
0,
'',
'8959',
'',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'TransfertChequeFinancement_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Transfert Cheque/Financement', description = '', displaylength = 0, displaylogic = '', entitytype = '8959', help = '', obscuretype = '', seqno = 130, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'TransfertChequeFinancement_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TransfertChequeFinancement_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', '','','Créer Transfert Chèques'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TransfertChequeFinancement_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Créer Transfert Chèques' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TransfertChequeFinancement_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TransfertChequeFinancement_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', '','','Créer Transfert Chèques'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TransfertChequeFinancement_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Créer Transfert Chèques' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TransfertChequeFinancement_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'SortiesdeCaisse_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Sorties de Caisse',
'',
0,
'',
'8959',
'',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'SortiesdeCaisse_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Sorties de Caisse', description = '', displaylength = 0, displaylogic = '', entitytype = '8959', help = '', obscuretype = '', seqno = 150, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'SortiesdeCaisse_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SortiesdeCaisse_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', '','','Sorties de Caisse'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SortiesdeCaisse_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sorties de Caisse' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SortiesdeCaisse_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SortiesdeCaisse_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', '','','Sorties de Caisse'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SortiesdeCaisse_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sorties de Caisse' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SortiesdeCaisse_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Depotenbanque_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Dépôt en banque',
'',
0,
'',
'8959',
'',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Depotenbanque_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Dépôt en banque', description = '', displaylength = 0, displaylogic = '', entitytype = '8959', help = '', obscuretype = '', seqno = 140, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Depotenbanque_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Depotenbanque_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', '','','Dépôt en banque'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Depotenbanque_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Dépôt en banque' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Depotenbanque_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Depotenbanque_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', '','','Dépôt en banque'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Depotenbanque_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Dépôt en banque' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Depotenbanque_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'EftStatementLineDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'EFT Statement Line Date',
'Electronic Funds Transfer Statement Line Date',
7,
'',
'8959',
'Information from EFT media',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'EftStatementLineDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'EFT Statement Line Date', description = 'Electronic Funds Transfer Statement Line Date', displaylength = 7, displaylogic = '', entitytype = '8959', help = 'Information from EFT media', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'EftStatementLineDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftStatementLineDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Electronic Funds Transfer Statement Line Date','Information from EFT media','EFT Statement Line Date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftStatementLineDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Electronic Funds Transfer Statement Line Date',Help = 'Information from EFT media',Name = 'EFT Statement Line Date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftStatementLineDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftStatementLineDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Electronic Funds Transfer Statement Line Date','Information from EFT media','EFT Statement Line Date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftStatementLineDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Electronic Funds Transfer Statement Line Date',Help = 'Information from EFT media',Name = 'EFT Statement Line Date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftStatementLineDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'EftTrxID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'EFT Trx ID',
'Electronic Funds Transfer Transaction ID',
40,
'',
'8959',
'Information from EFT media',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'EftTrxID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'EFT Trx ID', description = 'Electronic Funds Transfer Transaction ID', displaylength = 40, displaylogic = '', entitytype = '8959', help = 'Information from EFT media', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'EftTrxID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftTrxID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Electronic Funds Transfer Transaction ID','Information from EFT media','EFT Trx ID'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftTrxID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Electronic Funds Transfer Transaction ID',Help = 'Information from EFT media',Name = 'EFT Trx ID' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftTrxID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftTrxID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Electronic Funds Transfer Transaction ID','Information from EFT media','EFT Trx ID'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftTrxID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Electronic Funds Transfer Transaction ID',Help = 'Information from EFT media',Name = 'EFT Trx ID' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftTrxID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'EftTrxType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'EFT Trx Type',
'Electronic Funds Transfer Transaction Type',
20,
'',
'8959',
'Information from EFT media',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'EftTrxType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'EFT Trx Type', description = 'Electronic Funds Transfer Transaction Type', displaylength = 20, displaylogic = '', entitytype = '8959', help = 'Information from EFT media', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'EftTrxType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftTrxType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Electronic Funds Transfer Transaction Type','Information from EFT media','EFT Trx Type'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftTrxType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Electronic Funds Transfer Transaction Type',Help = 'Information from EFT media',Name = 'EFT Trx Type' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftTrxType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftTrxType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Electronic Funds Transfer Transaction Type','Information from EFT media','EFT Trx Type'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftTrxType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Electronic Funds Transfer Transaction Type',Help = 'Information from EFT media',Name = 'EFT Trx Type' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EftTrxType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'InterestAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Interest Amount',
'Interest Amount',
22,
'',
'8959',
'The Interest Amount indicates any interest charged or received on a Bank Statement.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'InterestAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Interest Amount', description = 'Interest Amount', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'The Interest Amount indicates any interest charged or received on a Bank Statement.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'InterestAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'InterestAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Interest Amount','The Interest Amount indicates any interest charged or received on a Bank Statement.','Interest Amount'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'InterestAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Interest Amount',Help = 'The Interest Amount indicates any interest charged or received on a Bank Statement.',Name = 'Interest Amount' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'InterestAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'InterestAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Interest Amount','The Interest Amount indicates any interest charged or received on a Bank Statement.','Interest Amount'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'InterestAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Interest Amount',Help = 'The Interest Amount indicates any interest charged or received on a Bank Statement.',Name = 'Interest Amount' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'InterestAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Reference'),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Invoice',
'Invoice Identifier',
22,
'',
'8959',
'The Invoice Document.',
'',
180,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Reference'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Invoice', description = 'Invoice Identifier', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'The Invoice Document.', obscuretype = '', seqno = 180, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Invoice Identifier','The Invoice Document.','Invoice'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Invoice Identifier',Help = 'The Invoice Document.',Name = 'Invoice' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Invoice Identifier','The Invoice Document.','Invoice'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Invoice Identifier',Help = 'The Invoice Document.',Name = 'Invoice' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Line No',
'Unique line for this document',
22,
'',
'8959',
'Indicates the unique line for a document.  It will also control the display order of the lines within a document.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Line No', description = 'Unique line for this document', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'Indicates the unique line for a document.  It will also control the display order of the lines within a document.', obscuretype = '', seqno = 40, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Unique line for this document','Indicates the unique line for a document.  It will also control the display order of the lines within a document.','Line No'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Unique line for this document',Help = 'Indicates the unique line for a document.  It will also control the display order of the lines within a document.',Name = 'Line No' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Unique line for this document','Indicates the unique line for a document.  It will also control the display order of the lines within a document.','Line No'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Unique line for this document',Help = 'Indicates the unique line for a document.  It will also control the display order of the lines within a document.',Name = 'Line No' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsManual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Manual',
'This is a manual process or entry',
1,
'',
'8959',
'The Manual check box indicates if the process or entry will be done manually.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsManual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Manual', description = 'This is a manual process or entry', displaylength = 1, displaylogic = '', entitytype = '8959', help = 'The Manual check box indicates if the process or entry will be done manually.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsManual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsManual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'This is a manual process or entry','The Manual check box indicates if the process or entry will be done manually.','Manual'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsManual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'This is a manual process or entry',Help = 'The Manual check box indicates if the process or entry will be done manually.',Name = 'Manual' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsManual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsManual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'This is a manual process or entry','The Manual check box indicates if the process or entry will be done manually.','Manual'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsManual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'This is a manual process or entry',Help = 'The Manual check box indicates if the process or entry will be done manually.',Name = 'Manual' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsManual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'MatchStatement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Match Bank Statement',
'Match Bank Statement Info to Business Partners, Invoices and Payments',
1,
'',
'8959',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'MatchStatement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Match Bank Statement', description = 'Match Bank Statement Info to Business Partners, Invoices and Payments', displaylength = 1, displaylogic = '', entitytype = '8959', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'MatchStatement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MatchStatement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', '','','Match Statement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MatchStatement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Match Statement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MatchStatement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MatchStatement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', '','','Match Statement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MatchStatement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Match Statement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MatchStatement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Memo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Memo',
'Memo Text',
255,
'',
'8959',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Memo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Memo', description = 'Memo Text', displaylength = 255, displaylogic = '', entitytype = '8959', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Memo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Memo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Memo Text','','Memo'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Memo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Memo Text',Help = '',Name = 'Memo' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Memo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Memo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Memo Text','','Memo'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Memo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Memo Text',Help = '',Name = 'Memo' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Memo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Organization',
'Organizational entity within Tenant',
22,
'',
'8959',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Cash Movements' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Organization', description = 'Organizational entity within Tenant', displaylength = 22, displaylogic = '', entitytype = '8959', help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', obscuretype = '', seqno = 20, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', 'Organizational entity within Tenant','An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organizational entity within Tenant',Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Name = 'Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', 'Organizational entity within Tenant','An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organizational entity within Tenant',Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Name = 'Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Cash Movements' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'EtatCaisse_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Visualisation Etat de Caisse',
'',
0,
'',
'8959',
'',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'EtatCaisse_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Visualisation Etat de Caisse', description = '', displaylength = 0, displaylogic = '', entitytype = '8959', help = '', obscuretype = '', seqno = 120, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'EtatCaisse_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EtatCaisse_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', '','','Visualisation Etat de Caisse'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EtatCaisse_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Visualisation Etat de Caisse' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EtatCaisse_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EtatCaisse_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', '','','Visualisation Etat de Caisse'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EtatCaisse_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Visualisation Etat de Caisse' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EtatCaisse_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'Remise Chèque/Financement','Remise Chèque/Financement',
'W',
'',
'8959',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = 'Remise Chèque/Financement'),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'Remise Chèque/Financement' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Remise Chèque/Financement', action = 'W', description = '', entitytype = '8959', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Remise Chèque/Financement'), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'Remise Chèque/Financement' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Remise Chèque/Financement'), 'nl_BE', 'Y', '',''
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Remise Chèque/Financement') and ad_language = 'nl_BE');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Remise Chèque/Financement') and ad_language = 'nl_BE';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Remise Chèque/Financement'), 'fr_FR', 'Y', '','Remise Chèque/Financement '
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Remise Chèque/Financement') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Remise Chèque/Financement ' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Remise Chèque/Financement') and ad_language = 'fr_FR';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'CLOSING CASH','CLOSING CASH',
'W',
'',
'8959',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = 'CLOSING CASH'),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'CLOSING CASH' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'CLOSING CASH', action = 'W', description = '', entitytype = '8959', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH'), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'CLOSING CASH' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='CLOSING CASH'), 'nl_BE', 'Y', '','CLOSING CASH'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='CLOSING CASH') and ad_language = 'nl_BE');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'CLOSING CASH' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='CLOSING CASH') and ad_language = 'nl_BE';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='CLOSING CASH'), 'fr_FR', 'Y', '','CLOSING CASH'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='CLOSING CASH') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'CLOSING CASH' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='CLOSING CASH') and ad_language = 'fr_FR';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'Deposit Bank','Deposit Bank',
'W',
'',
'8959',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = 'Deposit Bank'),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'Deposit Bank' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Deposit Bank', action = 'W', description = '', entitytype = '8959', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Deposit Bank'), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'Deposit Bank' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Deposit Bank'), 'nl_BE', 'Y', '','Deposit Bank'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Deposit Bank') and ad_language = 'nl_BE');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Deposit Bank' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Deposit Bank') and ad_language = 'nl_BE';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Deposit Bank'), 'fr_FR', 'Y', '','Deposit Bank'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Deposit Bank') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Deposit Bank' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Deposit Bank') and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '38959- SFD0021 - Modification ergonomie extrait bancaire', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1.00', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '8959' ;

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'Remise Chèque/Financement') ,(select c.ad_menu_id from ad_menu c where c.value = 'Open Items_236') ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'Remise Chèque/Financement')); 

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'CLOSING CASH') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'CLOSING CASH')); 

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'Deposit Bank') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'Deposit Bank')); 

