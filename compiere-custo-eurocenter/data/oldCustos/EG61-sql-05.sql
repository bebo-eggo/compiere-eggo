update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Contrat Store' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'fr_FR';
update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Contrat Store' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'nl_NL';
update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Délai Paiement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_NobiliaCreditTerm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'fr_FR';
update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Délai Paiement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_NobiliaCreditTerm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'nl_NL';
update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Référence de la commande (achat ou vente) indiquée par le tiers (fournisseur ou client)',Help = 'Identifie la référence de  la commande  (référence Tiers) pour une transaction spécifique. Souvent, c''est le numéro de la commande d''achat Tiers, imprimé sur la facture, qui est spécifié. Un numéro standard peut être défini au niveau du Tiers (onglet client de la fenêtre Tiers)',Name = 'Fact. Fourn' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'fr_FR';
update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Référence de la commande (achat ou vente) indiquée par le tiers (fournisseur ou client)',Help = 'Identifie la référence de  la commande  (référence Tiers) pour une transaction spécifique. Souvent, c''est le numéro de la commande d''achat Tiers, imprimé sur la facture, qui est spécifié. Un numéro standard peut être défini au niveau du Tiers (onglet client de la fenêtre Tiers)',Name = 'Fact. Fourn' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'nl_NL';
update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Journal' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'fr_FR';
update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Journal' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'nl_NL';
update AD_Menu_Trl set Name ='Maintenance Facture (Fournisseur)' where AD_Menu_ID = 206 and ad_language = 'fr_FR';
  CREATE OR REPLACE FORCE VIEW "ZRV_INVOICEARCO" ("AD_CLIENT_ID", "AD_ORG_ID", "CREATED", "CREATEDBY", "UPDATED", "UPDATEDBY", "ISACTIVE", "POREFERENCE", "DOCUMENTNO", "DOCNOEAN", "DATEACCT", "C_BPARTNER_ID", "TOTALLINES", "GRANDTOTAL", "VENDORDOCNUM", "DATEINVOICED", "C_INVOICE_ID", "REFFOURN", "ISARCOPRINT", "ISSOTRX") AS 
  SELECT i.ad_client_id,
    i.ad_org_id,
    i.created ,
    i.createdby,
    i.updated,
    i.updatedby,
    i.isactive,
    i.poreference,
    i.documentno,
        'A'|| i.C_INVOICE_ID||'Z' as docNoEAN,
    i.dateacct,
    i.c_bpartner_id,
    i.totallines,
    i.grandtotal,
    i.vendordocnum,
    i.dateinvoiced, 
    i.C_Invoice_ID,
    cb.Name as refFourn,
    i.ISARCOPRINT,i.ISSOTRX
  FROM c_invoice i
inner join C_BPartner cb on cb.C_BPARTNER_ID =  i.C_BPARTNER_ID
where i.ISSoTRx='N' and i.ISARCOPRINT ='N' and i.DOCSTATUS in ('CO','CL')
and not exists (select 1 from C_DocTypeInfo where C_DocTypeInfo.C_DocType_ID = i.C_DocType_ID and C_DocTypeInfo.Z_InvTypeImport is not null);
/
