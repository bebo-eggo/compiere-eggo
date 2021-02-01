insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'28TY','28TY- 74558: Lettrage automatique des comptes tiers',
'Evolution #74558 (Entity Type : 28TY) Lettrage automatique des comptes tiers',
'Evolution #74558 (Entity Type : 28TY) Lettrage automatique des comptes tiers',
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
where not exists (select 1 from AD_EntityType where EntityType = '28TY' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '28TY- 74558: Lettrage automatique des comptes tiers', description = 'Evolution #74558 (Entity Type : 28TY) Lettrage automatique des comptes tiers', help = 'Evolution #74558 (Entity Type : 28TY) Lettrage automatique des comptes tiers', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '28TY' ;

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'C_Allocation_Auto_EC','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'org.compiere.process.AllocationAutoEC',
'Automatic allocation of invoices to payments',
'28TY',
'Try to allocate invoices to payments for a business partner or group.  You may want to reset existing allocations first.<br> The allocation is based on (1) payments entered with reference to invoices (2) payment selections (3) business partner balance (4) matching amount of invoice &'||' payment.  Allocation is based on exact amount and includes AP/AR invoices/payments.<br> Optionally as (5), you can enable to allocate payments to the oldest invoice. In this case, there might be an unallocated amount remaining.',
'',
'',
'Auto Allocation EC',
'',
'Y',
'N',
'N',
'N',
'N',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
(select AD_BView_ID from AD_BView where Name = ''),
(select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''),
'N'
 from dual  
where not exists (select 1 from AD_Process where Value = 'C_Allocation_Auto_EC' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'org.compiere.process.AllocationAutoEC', description = 'Automatic allocation of invoices to payments', entitytype = '28TY', help = 'Try to allocate invoices to payments for a business partner or group.  You may want to reset existing allocations first.<br> The allocation is based on (1) payments entered with reference to invoices (2) payment selections (3) business partner balance (4) matching amount of invoice &'||' payment.  Allocation is based on exact amount and includes AP/AR invoices/payments.<br> Optionally as (5), you can enable to allocate payments to the oldest invoice. In this case, there might be an unallocated amount remaining.', jasperreport = '', procedurename = '', name = 'Auto Allocation EC', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'C_Allocation_Auto_EC' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='C_Allocation_Auto_EC'), 'fr_FR', 'Y', 'Allocation automatique des factures et paiements','Essayez d''allouer les factures aux paiements pour un tiers ou groupe de tiers. Vous avez la possibilité de remettre à zéro les allocations existantes. Le processus se base sur (1) les paiements réalisés en référence au factures (2) aux sélections de paiements (3) à la balance Tiers (4) au lettrage du montant entre facture et paiement. L''allocation se base sur le montant exact. ','Allocation automatique EC'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='C_Allocation_Auto_EC') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Allocation automatique des factures et paiements',Help = 'Essayez d''allouer les factures aux paiements pour un tiers ou groupe de tiers. Vous avez la possibilité de remettre à zéro les allocations existantes. Le processus se base sur (1) les paiements réalisés en référence au factures (2) aux sélections de paiements (3) à la balance Tiers (4) au lettrage du montant entre facture et paiement. L''allocation se base sur le montant exact. ',Name = 'Allocation automatique EC' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='C_Allocation_Auto_EC') and ad_language = 'fr_FR';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='C_Allocation_Auto_EC'), 'nl_NL', 'Y', 'Automatische allocatie van facturen naar betalingen','Poging om facturen naar betalingen te alloceren voor een relatie of relatiecategorie. U kunt overwegen eerst de bestaande allocaties te resetten. De allocatie is gebaseerd op (1) betalingen die zijn ingevoerd met een referentie naar een factuur (2)  betaling selecties (3) relatie open balans. De allocatie is gebaseerd op het exacte bedrag.','Auto Allocatie EC'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='C_Allocation_Auto_EC') and ad_language = 'nl_NL');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Automatische allocatie van facturen naar betalingen',Help = 'Poging om facturen naar betalingen te alloceren voor een relatie of relatiecategorie. U kunt overwegen eerst de bestaande allocaties te resetten. De allocatie is gebaseerd op (1) betalingen die zijn ingevoerd met een referentie naar een factuur (2)  betaling selecties (3) relatie open balans. De allocatie is gebaseerd op het exacte bedrag.',Name = 'Auto Allocatie EC' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='C_Allocation_Auto_EC') and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'C_BP_Group_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_BP_Group_ID'),
(select AD_Process_ID from AD_Process where Value = 'C_Allocation_Auto_EC'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Business Partner Group',
'0',
'',
'Business Partner Group',
'28TY',
0,
'The Business Partner Group provides a method of defining defaults to be used for individual Business Partners.',
10,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'C_BP_Group_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_BP_Group_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'C_Allocation_Auto_EC'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Business Partner Group', defaultvalue = '0', defaultvalue2 = '', description = 'Business Partner Group', entitytype = '28TY', fieldlength = 0, help = 'The Business Partner Group provides a method of defining defaults to be used for individual Business Partners.', seqno = 10, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'C_BP_Group_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BP_Group_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC')), 'fr_FR', 'Y', 'Groupe de tiers','Définit des paramètres par défaut appliqués ensuite aux tiers appartenant à ce groupe.','Groupe de tiers'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BP_Group_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Groupe de tiers',Help = 'Définit des paramètres par défaut appliqués ensuite aux tiers appartenant à ce groupe.',Name = 'Groupe de tiers' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BP_Group_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BP_Group_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC')), 'nl_NL', 'Y', 'Relatie categorie kenmerk','Het releatie catagorie kenmerk biedt de mogelijkheid standaarden te definieren voor indivuele relaties.','Relatie Categorie'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BP_Group_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Relatie categorie kenmerk',Help = 'Het releatie catagorie kenmerk biedt de mogelijkheid standaarden te definieren voor indivuele relaties.',Name = 'Relatie Categorie' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BP_Group_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'C_BPartner_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_BPartner_ID'),
(select AD_Process_ID from AD_Process where Value = 'C_Allocation_Auto_EC'),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Business Partner',
'',
'',
'Identifies a Business Partner',
'28TY',
0,
'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',
20,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'C_BPartner_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_BPartner_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'C_Allocation_Auto_EC'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Business Partner', defaultvalue = '', defaultvalue2 = '', description = 'Identifies a Business Partner', entitytype = '28TY', fieldlength = 0, help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', seqno = 20, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'C_BPartner_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC')), 'fr_FR', 'Y', 'Identifie un tiers','Un tiers est un partenaire avec lequel vous réalisez des transactions.  Il peut être un fournisseur, un client, un employé ou un agent commercial.','Tiers'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifie un tiers',Help = 'Un tiers est un partenaire avec lequel vous réalisez des transactions.  Il peut être un fournisseur, un client, un employé ou un agent commercial.',Name = 'Tiers' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC')), 'nl_NL', 'Y', 'Geeft een relatie aan.','Een relatie is iedereen met wie u interactie heeft. Dit omvat bijvoorbeeld leveranciers, klanten, peroneelsleden en verkopers.','Relatie'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Geeft een relatie aan.',Help = 'Een relatie is iedereen met wie u interactie heeft. Dit omvat bijvoorbeeld leveranciers, klanten, peroneelsleden en verkopers.',Name = 'Relatie' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'AllocateOldest',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'C_Allocation_Auto_EC'),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Allocate Oldest First',
'',
'',
'Allocate payments to the oldest invoice',
'28TY',
0,
'Allocate payments to the oldest invoice. There might be an unallocated amount remaining.',
40,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'AllocateOldest'  and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'C_Allocation_Auto_EC'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Allocate Oldest First', defaultvalue = '', defaultvalue2 = '', description = 'Allocate payments to the oldest invoice', entitytype = '28TY', fieldlength = 0, help = 'Allocate payments to the oldest invoice. There might be an unallocated amount remaining.', seqno = 40, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'AllocateOldest'  and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AllocateOldest' and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC')), 'fr_FR', 'Y', 'Affecter les paiements aux factures les plus agées','Affecter les paiements aux factures les plus agées. Il se pourrait qu''il reste un montant non affecté restant.','Affecter d''abord les plus anciens'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AllocateOldest' and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Affecter les paiements aux factures les plus agées',Help = 'Affecter les paiements aux factures les plus agées. Il se pourrait qu''il reste un montant non affecté restant.',Name = 'Affecter d''abord les plus anciens' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AllocateOldest' and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AllocateOldest' and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC')), 'nl_NL', 'Y', 'Alloceer betalingen naar de oudste factuur eerst.','Alloceer betalingen naar de oudste factuur eerst. Er kan een ongealloceerd bedrag overblijven.','Alloceer Oudste Eerst'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AllocateOldest' and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Alloceer betalingen naar de oudste factuur eerst.',Help = 'Alloceer betalingen naar de oudste factuur eerst. Er kan een ongealloceerd bedrag overblijven.',Name = 'Alloceer Oudste Eerst' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AllocateOldest' and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'APAR',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'C_Allocation_Auto_EC'),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = 'APAR'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'AP - AR',
'A',
'',
'Include Receivables and/or Payables transactions',
'28TY',
1,
'',
30,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'APAR'  and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'C_Allocation_Auto_EC'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'APAR'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'AP - AR', defaultvalue = 'A', defaultvalue2 = '', description = 'Include Receivables and/or Payables transactions', entitytype = '28TY', fieldlength = 1, help = '', seqno = 30, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'APAR'  and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='APAR' and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC')), 'fr_FR', 'Y', 'Transactions AR (Client) et AP (Fournisseur) inclues.','','AP - AR'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='APAR' and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Transactions AR (Client) et AP (Fournisseur) inclues.',Help = '',Name = 'AP - AR' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='APAR' and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='APAR' and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC')), 'nl_NL', 'Y', 'Neem inkomende en/of uitgaande transacties mee','','Inkomend - Uitgaand'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='APAR' and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Neem inkomende en/of uitgaande transacties mee',Help = '',Name = 'Inkomend - Uitgaand' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='APAR' and ad_process_id in (select ad_process_id from ad_process where value = 'C_Allocation_Auto_EC')) and ad_language = 'nl_NL';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'Auto Allocation_EC','Allocation automatique d'EuroCenter',
'P',
'',
'28TY',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = 'C_Allocation_Auto_EC'),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'Auto Allocation_EC' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Allocation automatique d'EuroCenter', action = 'P', description = '', entitytype = '28TY', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'C_Allocation_Auto_EC'), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'Auto Allocation_EC' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Auto Allocation_EC'), 'fr_FR', 'Y', '','Allocation automatique d'EuroCenter'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Auto Allocation_EC') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Allocation automatique d'EuroCenter' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Auto Allocation_EC') and ad_language = 'fr_FR';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Auto Allocation_EC'), 'nl_NL', 'Y', '','Auto Allocatie EuroCenter'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Auto Allocation_EC') and ad_language = 'nl_NL');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Auto Allocatie EuroCenter' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Auto Allocation_EC') and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '28TY- 74558: Lettrage automatique des comptes tiers', description = 'Evolution #74558 (Entity Type : 28TY) Lettrage automatique des comptes tiers', help = 'Evolution #74558 (Entity Type : 28TY) Lettrage automatique des comptes tiers', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '28TY' ;

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'Auto Allocation_EC') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'Auto Allocation_EC')); 

