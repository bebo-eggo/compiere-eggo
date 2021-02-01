insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'E265','48265 - Modification Ecran de Réconciliation OA-FA',
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
where not exists (select 1 from AD_EntityType where EntityType = 'E265' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '48265 - Modification Ecran de Réconciliation OA-FA', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E265' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'receiptno','',
'E265',
'',
'receipt',
'',
'',
'',
'',
'receipt',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'receiptno' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'E265', help = '', name = 'receipt', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'receipt', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'receiptno' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='receiptno'), 'fr_FR', 'Y', '','','Réception','','','','','Réception'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='receiptno') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Réception',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Réception' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='receiptno') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='receiptno'), 'nl_NL', 'Y', '','','receipt','','','','','receipt'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='receiptno') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'receipt',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'receipt' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='receiptno') and ad_language = 'nl_NL';

insert into AD_InfoWindow (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoWindow_ID,Name,description, entitytype, help, isactive, AD_Table_ID, fromclause, otherclause, iscustomdefault) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_InfoWindow'),'Purchase Order','Purchase Order',
'E265',
'',
'Y',
(select AD_Table_ID from AD_Table where TableName = 'C_Order'),
'C_Order C_Order  INNER JOIN RV_DOCSTATUSNAME docn ON (docn.Value =''@#AD_Language@''||C_Order.DOCSTATUS)',
'AND C_Order.IsSOTrx        =''N''  AND C_Order.DocStatus     IN (''CL'',''CO'')  AND C_Order.C_Order_ID    IN   (SELECT ol.C_Order_ID   FROM C_OrderLine ol   WHERE (ol.QtyOrdered <> ol.qtyDelivered))',
'N'
 from dual  
where not exists (select 1 from AD_InfoWindow where Name = 'Purchase Order' );

update AD_InfoWindow set Updated = sysdate, UpdatedBy = 0, description = 'Purchase Order', entitytype = 'E265', help = '', isactive = 'Y', AD_Table_ID = (select AD_Table_ID from AD_Table where TableName = 'C_Order'), fromclause = 'C_Order C_Order  INNER JOIN RV_DOCSTATUSNAME docn ON (docn.Value =''@#AD_Language@''||C_Order.DOCSTATUS)', otherclause = 'AND C_Order.IsSOTrx        =''N''  AND C_Order.DocStatus     IN (''CL'',''CO'')  AND C_Order.C_Order_ID    IN   (SELECT ol.C_Order_ID   FROM C_OrderLine ol   WHERE (ol.QtyOrdered <> ol.qtyDelivered))', iscustomdefault = 'N' 
where Name = 'Purchase Order' ;

insert into AD_InfoWindow_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoWindow_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoWindow_ID from AD_InfoWindow where Name='Purchase Order'), 'fr_FR', 'Y', 'Commande d''Achat','','Commande d''Achat'
 from dual  
where not exists (select 1 from AD_InfoWindow_Trl where AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name='Purchase Order') and ad_language = 'fr_FR');

update AD_InfoWindow_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Commande d''Achat',Help = '',Name = 'Commande d''Achat' where AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name='Purchase Order') and ad_language = 'fr_FR';

insert into AD_InfoWindow_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoWindow_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoWindow_ID from AD_InfoWindow where Name='Purchase Order'), 'nl_NL', 'Y', 'Purchase Order','','Purchase Order'
 from dual  
where not exists (select 1 from AD_InfoWindow_Trl where AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name='Purchase Order') and ad_language = 'nl_NL');

update AD_InfoWindow_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Purchase Order',Help = '',Name = 'Purchase Order' where AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name='Purchase Order') and ad_language = 'nl_NL';

insert into AD_InfoWindow (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoWindow_ID,Name,description, entitytype, help, isactive, AD_Table_ID, fromclause, otherclause, iscustomdefault) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_InfoWindow'),'Invoice Receipt','Invoice Receipt',
'E265',
'',
'Y',
(select AD_Table_ID from AD_Table where TableName = 'M_InOut'),
'M_InOut M_InOut   INNER JOIN M_InOutLine sl ON (M_InOut.M_InOut_ID = sl.M_InOut_ID)   LEFT OUTER JOIN C_OrderLine ol ON (ol.C_OrderLine_ID = sl.C_OrderLine_ID)   LEFT OUTER JOIN C_Order o ON (o.C_Order_ID = ol.C_Order_ID)   LEFT OUTER JOIN M_Product pro ON (sl.M_Product_ID     = pro.M_Product_ID)   INNER JOIN RV_DOCSTATUSNAME docn ON (docn.Value =''@#AD_Language@''||M_InOut.DOCSTATUS)',
'AND M_InOut.IsSOTrx          =''N'' AND M_InOut.DocStatus       IN (''CL'',''CO'',''RE'',''VO'') AND NOT (sl.MovementQty = 0 AND pro.producttype     = ''S'') AND NOT EXISTS   (SELECT 1   FROM C_Invoice i   INNER JOIN C_InvoiceLine il   ON (i.C_Invoice_ID     = il.C_Invoice_ID)   WHERE i.DocStatus NOT IN (''CO'',''CL'',''RE'',''VO'')   AND il.M_InOutLine_ID  = sl.M_InOutLine_ID   ) AND (sl.M_InOutLine_ID      IS NULL OR (ROUND(sl.MovementQty,6) <> NVL(   (SELECT SUM(ROUND(NVL(mi.Qty,0),6))   FROM M_MatchInv mi   WHERE mi.M_InOutLine_ID = sl.M_InOutLine_ID   ), 0)))',
'N'
 from dual  
where not exists (select 1 from AD_InfoWindow where Name = 'Invoice Receipt' );

update AD_InfoWindow set Updated = sysdate, UpdatedBy = 0, description = 'Invoice Receipt', entitytype = 'E265', help = '', isactive = 'Y', AD_Table_ID = (select AD_Table_ID from AD_Table where TableName = 'M_InOut'), fromclause = 'M_InOut M_InOut   INNER JOIN M_InOutLine sl ON (M_InOut.M_InOut_ID = sl.M_InOut_ID)   LEFT OUTER JOIN C_OrderLine ol ON (ol.C_OrderLine_ID = sl.C_OrderLine_ID)   LEFT OUTER JOIN C_Order o ON (o.C_Order_ID = ol.C_Order_ID)   LEFT OUTER JOIN M_Product pro ON (sl.M_Product_ID     = pro.M_Product_ID)   INNER JOIN RV_DOCSTATUSNAME docn ON (docn.Value =''@#AD_Language@''||M_InOut.DOCSTATUS)', otherclause = 'AND M_InOut.IsSOTrx          =''N'' AND M_InOut.DocStatus       IN (''CL'',''CO'',''RE'',''VO'') AND NOT (sl.MovementQty = 0 AND pro.producttype     = ''S'') AND NOT EXISTS   (SELECT 1   FROM C_Invoice i   INNER JOIN C_InvoiceLine il   ON (i.C_Invoice_ID     = il.C_Invoice_ID)   WHERE i.DocStatus NOT IN (''CO'',''CL'',''RE'',''VO'')   AND il.M_InOutLine_ID  = sl.M_InOutLine_ID   ) AND (sl.M_InOutLine_ID      IS NULL OR (ROUND(sl.MovementQty,6) <> NVL(   (SELECT SUM(ROUND(NVL(mi.Qty,0),6))   FROM M_MatchInv mi   WHERE mi.M_InOutLine_ID = sl.M_InOutLine_ID   ), 0)))', iscustomdefault = 'N' 
where Name = 'Invoice Receipt' ;

insert into AD_InfoWindow_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoWindow_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoWindow_ID from AD_InfoWindow where Name='Invoice Receipt'), 'fr_FR', 'Y', 'Réception','','Réception'
 from dual  
where not exists (select 1 from AD_InfoWindow_Trl where AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name='Invoice Receipt') and ad_language = 'fr_FR');

update AD_InfoWindow_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Réception',Help = '',Name = 'Réception' where AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name='Invoice Receipt') and ad_language = 'fr_FR';

insert into AD_InfoWindow_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoWindow_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoWindow_ID from AD_InfoWindow where Name='Invoice Receipt'), 'nl_NL', 'Y', 'Ontvangst','','Ontvangst'
 from dual  
where not exists (select 1 from AD_InfoWindow_Trl where AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name='Invoice Receipt') and ad_language = 'nl_NL');

update AD_InfoWindow_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Ontvangst',Help = '',Name = 'Ontvangst' where AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name='Receipt') and ad_language = 'nl_NL';

insert into AD_InfoColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,Name,AD_InfoWindow_ID, seqNo, description, help, isactive, isCentrallyMaintained, isDisplayed, isQueryCriteria, AD_Reference_ID, SelectClause, AD_Element_ID,  entitytype, isKey, isIdentifier, isRange) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_InfoColumn'),'Vendor',(select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order'),
30,
'The Vendor of the product/service',
'',
'Y',
'Y',
'Y',
'N',
(select AD_Reference_ID from AD_Reference where Name = 'String'),
'(SELECT Name FROM C_BPartner bp WHERE bp.C_BPartner_ID=C_Order.C_BPartner_ID)',
(select AD_Element_ID from AD_Element where ColumnName = 'Vendor_ID'),
'E265',
'N',
'N',
'N'
 from dual  
where not exists (select 1 from AD_InfoColumn where Name = 'Vendor'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' ));

update AD_InfoColumn set Updated = sysdate, UpdatedBy = 0, AD_InfoWindow_ID = (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order'), seqNo = 30, description = 'The Vendor of the product/service', help = '', isactive = 'Y', isCentrallyMaintained = 'Y', isDisplayed = 'Y', isQueryCriteria = 'N', AD_Reference_ID = (select AD_Reference_ID from AD_Reference where Name = 'String'), SelectClause = '(SELECT Name FROM C_BPartner bp WHERE bp.C_BPartner_ID=C_Order.C_BPartner_ID)', AD_Element_ID = (select AD_Element_ID from AD_Element where ColumnName = 'Vendor_ID'), entitytype = 'E265', isKey = 'N', isIdentifier = 'N', isRange = 'N' 
where Name = 'Vendor'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' );

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Vendor' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )), 'fr_FR', 'Y', '','','Fournisseur'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Vendor' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'fr_FR');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Fournisseur' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Vendor' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'fr_FR';

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Vendor' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )), 'nl_NL', 'Y', '','','Leverancier'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Vendor' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'nl_NL');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Leverancier' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Vendor' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'nl_NL';

insert into AD_InfoColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,Name,AD_InfoWindow_ID, seqNo, description, help, isactive, isCentrallyMaintained, isDisplayed, isQueryCriteria, AD_Reference_ID, SelectClause, AD_Element_ID,  entitytype, isKey, isIdentifier, isRange) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_InfoColumn'),'Document No',(select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order'),
20,
'Document sequence number of the document',
'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',
'Y',
'Y',
'Y',
'Y',
(select AD_Reference_ID from AD_Reference where Name = 'String'),
'C_Order.DocumentNo',
(select AD_Element_ID from AD_Element where ColumnName = 'DocumentNo'),
'E265',
'N',
'Y',
'N'
 from dual  
where not exists (select 1 from AD_InfoColumn where Name = 'Document No'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' ));

update AD_InfoColumn set Updated = sysdate, UpdatedBy = 0, AD_InfoWindow_ID = (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order'), seqNo = 20, description = 'Document sequence number of the document', help = 'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', isactive = 'Y', isCentrallyMaintained = 'Y', isDisplayed = 'Y', isQueryCriteria = 'Y', AD_Reference_ID = (select AD_Reference_ID from AD_Reference where Name = 'String'), SelectClause = 'C_Order.DocumentNo', AD_Element_ID = (select AD_Element_ID from AD_Element where ColumnName = 'DocumentNo'), entitytype = 'E265', isKey = 'N', isIdentifier = 'Y', isRange = 'N' 
where Name = 'Document No'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' );

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Document No' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )), 'fr_FR', 'Y', 'Numéros du document','','N° Document'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Document No' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'fr_FR');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Numéros du document',Help = '',Name = 'N° Document' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Document No' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'fr_FR';

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Document No' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )), 'nl_NL', 'Y', 'Het volgnummer van het document.','Het documentnummer is gewoonlijk gegenereerd door het systeem en bepaald door het documenttype. Als het document nog niet is opgeslagen, is het voorlopige nummer weergegeven tussen "<>".  Als het documenttype geen automatische documentnummer volgorde heeft en u creeert een nieuw document, dan is het veld document nr leeg. Dit is voor documenten die gewoonlijk een extern nummer hebben (zoals facturen van leveranciers). Als u het veld leeg laat, zal het systeem zelf een documentnummer genereren. De document nr volgorde dat wordt gebruikt voor dit reservenummer wordt beheerd in het scherm "Document nr. onderhouden".','Document Nr'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Document No' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'nl_NL');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Het volgnummer van het document.',Help = 'Het documentnummer is gewoonlijk gegenereerd door het systeem en bepaald door het documenttype. Als het document nog niet is opgeslagen, is het voorlopige nummer weergegeven tussen "<>".  Als het documenttype geen automatische documentnummer volgorde heeft en u creeert een nieuw document, dan is het veld document nr leeg. Dit is voor documenten die gewoonlijk een extern nummer hebben (zoals facturen van leveranciers). Als u het veld leeg laat, zal het systeem zelf een documentnummer genereren. De document nr volgorde dat wordt gebruikt voor dit reservenummer wordt beheerd in het scherm "Document nr. onderhouden".',Name = 'Document Nr' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Document No' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'nl_NL';

insert into AD_InfoColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,Name,AD_InfoWindow_ID, seqNo, description, help, isactive, isCentrallyMaintained, isDisplayed, isQueryCriteria, AD_Reference_ID, SelectClause, AD_Element_ID,  entitytype, isKey, isIdentifier, isRange) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_InfoColumn'),'Date Ordered',(select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order'),
40,
'Date of Order',
'Indicates the Date an item was ordered.',
'Y',
'Y',
'Y',
'N',
(select AD_Reference_ID from AD_Reference where Name = 'Date'),
'C_Order.dateordered',
(select AD_Element_ID from AD_Element where ColumnName = 'DateOrdered'),
'E265',
'N',
'N',
'N'
 from dual  
where not exists (select 1 from AD_InfoColumn where Name = 'Date Ordered'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' ));

update AD_InfoColumn set Updated = sysdate, UpdatedBy = 0, AD_InfoWindow_ID = (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order'), seqNo = 40, description = 'Date of Order', help = 'Indicates the Date an item was ordered.', isactive = 'Y', isCentrallyMaintained = 'Y', isDisplayed = 'Y', isQueryCriteria = 'N', AD_Reference_ID = (select AD_Reference_ID from AD_Reference where Name = 'Date'), SelectClause = 'C_Order.dateordered', AD_Element_ID = (select AD_Element_ID from AD_Element where ColumnName = 'DateOrdered'), entitytype = 'E265', isKey = 'N', isIdentifier = 'N', isRange = 'N' 
where Name = 'Date Ordered'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' );

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Date Ordered' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )), 'fr_FR', 'Y', 'Date de la commande','Indique la date à laquelle la commande a été établie','Date commande'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Date Ordered' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'fr_FR');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Date de la commande',Help = 'Indique la date à laquelle la commande a été établie',Name = 'Date commande' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Date Ordered' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'fr_FR';

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Date Ordered' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )), 'nl_NL', 'Y', 'Bestel Datum.','Geeft aan wanneer een order is geplaatst.','Bestel Datum'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Date Ordered' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'nl_NL');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Bestel Datum.',Help = 'Geeft aan wanneer een order is geplaatst.',Name = 'Bestel Datum' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Date Ordered' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'nl_NL';

insert into AD_InfoColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,Name,AD_InfoWindow_ID, seqNo, description, help, isactive, isCentrallyMaintained, isDisplayed, isQueryCriteria, AD_Reference_ID, SelectClause, AD_Element_ID,  entitytype, isKey, isIdentifier, isRange) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_InfoColumn'),'Grand Total',(select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order'),
50,
'Total amount of document',
'The Grand Total displays the total amount including Tax and Freight in document currency',
'Y',
'Y',
'Y',
'N',
(select AD_Reference_ID from AD_Reference where Name = 'Amount'),
'C_Order.GrandTotal',
(select AD_Element_ID from AD_Element where ColumnName = 'GrandTotal'),
'E265',
'N',
'N',
'N'
 from dual  
where not exists (select 1 from AD_InfoColumn where Name = 'Grand Total'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' ));

update AD_InfoColumn set Updated = sysdate, UpdatedBy = 0, AD_InfoWindow_ID = (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order'), seqNo = 50, description = 'Total amount of document', help = 'The Grand Total displays the total amount including Tax and Freight in document currency', isactive = 'Y', isCentrallyMaintained = 'Y', isDisplayed = 'Y', isQueryCriteria = 'N', AD_Reference_ID = (select AD_Reference_ID from AD_Reference where Name = 'Amount'), SelectClause = 'C_Order.GrandTotal', AD_Element_ID = (select AD_Element_ID from AD_Element where ColumnName = 'GrandTotal'), entitytype = 'E265', isKey = 'N', isIdentifier = 'N', isRange = 'N' 
where Name = 'Grand Total'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' );

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Grand Total' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )), 'fr_FR', 'Y', 'Total général du document','Indique le total général incluant TVA, frais de transport, dans la devise du document.','Total général'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Grand Total' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'fr_FR');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Total général du document',Help = 'Indique le total général incluant TVA, frais de transport, dans la devise du document.',Name = 'Total général' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Grand Total' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'fr_FR';

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Grand Total' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )), 'nl_NL', 'Y', 'Totaal Bedrag Order inc. BTW en transport.','Totaal Bedrag Order inc. BTW en transport in document valuta.','Totaal Bedrag Order'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Grand Total' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'nl_NL');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Totaal Bedrag Order inc. BTW en transport.',Help = 'Totaal Bedrag Order inc. BTW en transport in document valuta.',Name = 'Totaal Bedrag Order' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Grand Total' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'nl_NL';

insert into AD_InfoColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,Name,AD_InfoWindow_ID, seqNo, description, help, isactive, isCentrallyMaintained, isDisplayed, isQueryCriteria, AD_Reference_ID, SelectClause, AD_Element_ID,  entitytype, isKey, isIdentifier, isRange) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_InfoColumn'),'Order',(select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order'),
10,
'Order',
'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.',
'Y',
'Y',
'N',
'N',
(select AD_Reference_ID from AD_Reference where Name = 'ID'),
'C_Order.C_Order_ID',
(select AD_Element_ID from AD_Element where ColumnName = 'C_Order_ID'),
'E265',
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_InfoColumn where Name = 'Order'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' ));

update AD_InfoColumn set Updated = sysdate, UpdatedBy = 0, AD_InfoWindow_ID = (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order'), seqNo = 10, description = 'Order', help = 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.', isactive = 'Y', isCentrallyMaintained = 'Y', isDisplayed = 'N', isQueryCriteria = 'N', AD_Reference_ID = (select AD_Reference_ID from AD_Reference where Name = 'ID'), SelectClause = 'C_Order.C_Order_ID', AD_Element_ID = (select AD_Element_ID from AD_Element where ColumnName = 'C_Order_ID'), entitytype = 'E265', isKey = 'Y', isIdentifier = 'N', isRange = 'N' 
where Name = 'Order'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' );

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Order' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )), 'fr_FR', 'Y', 'Ordre de vente','Identificateur unique d''une commande. Contrôlé via les documents, et dépendant du type de ceux-ci (compteur différent par type de document)','Ordre de vente'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Order' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'fr_FR');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Ordre de vente',Help = 'Identificateur unique d''une commande. Contrôlé via les documents, et dépendant du type de ceux-ci (compteur différent par type de document)',Name = 'Ordre de vente' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Order' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'fr_FR';

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Order' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )), 'nl_NL', 'Y', 'Verkoop Order','The Sales Order ID is a unique identifier of a Sales Order.  This is controlled by the document sequence for this document type.','Verkoop Order'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Order' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'nl_NL');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Verkoop Order',Help = 'The Sales Order ID is a unique identifier of a Sales Order.  This is controlled by the document sequence for this document type.',Name = 'Verkoop Order' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Order' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'nl_NL';

insert into AD_InfoColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,Name,AD_InfoWindow_ID, seqNo, description, help, isactive, isCentrallyMaintained, isDisplayed, isQueryCriteria, AD_Reference_ID, SelectClause, AD_Element_ID,  entitytype, isKey, isIdentifier, isRange) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_InfoColumn'),'Document Status',(select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order'),
60,
'The current status of the document',
'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',
'Y',
'Y',
'Y',
'N',
(select AD_Reference_ID from AD_Reference where Name = 'String'),
'docn.Name',
(select AD_Element_ID from AD_Element where ColumnName = 'DocStatus'),
'E265',
'N',
'N',
'N'
 from dual  
where not exists (select 1 from AD_InfoColumn where Name = 'Document Status'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' ));

update AD_InfoColumn set Updated = sysdate, UpdatedBy = 0, AD_InfoWindow_ID = (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order'), seqNo = 60, description = 'The current status of the document', help = 'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field', isactive = 'Y', isCentrallyMaintained = 'Y', isDisplayed = 'Y', isQueryCriteria = 'N', AD_Reference_ID = (select AD_Reference_ID from AD_Reference where Name = 'String'), SelectClause = 'docn.Name', AD_Element_ID = (select AD_Element_ID from AD_Element where ColumnName = 'DocStatus'), entitytype = 'E265', isKey = 'N', isIdentifier = 'N', isRange = 'N' 
where Name = 'Document Status'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' );

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Document Status' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )), 'fr_FR', 'Y', 'Statut actuel du document','Pour changer le statut du document, utiliser le bouton changement de statut document','Statut document'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Document Status' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'fr_FR');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Statut actuel du document',Help = 'Pour changer le statut du document, utiliser le bouton changement de statut document',Name = 'Statut document' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Document Status' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'fr_FR';

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Document Status' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )), 'nl_NL', 'Y', 'De huidige status van het document.','De document status geeft de huidige status van een document weer. Als u de document status wilt wijzigen gebruikt u het gewenst document veld.','Document Status'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Document Status' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'nl_NL');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'De huidige status van het document.',Help = 'De document status geeft de huidige status van een document weer. Als u de document status wilt wijzigen gebruikt u het gewenst document veld.',Name = 'Document Status' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Document Status' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'nl_NL';

insert into AD_InfoColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,Name,AD_InfoWindow_ID, seqNo, description, help, isactive, isCentrallyMaintained, isDisplayed, isQueryCriteria, AD_Reference_ID, SelectClause, AD_Element_ID,  entitytype, isKey, isIdentifier, isRange) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_InfoColumn'),'Order Reference',(select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order'),
70,
'Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner',
'The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.',
'Y',
'Y',
'Y',
'N',
(select AD_Reference_ID from AD_Reference where Name = 'String'),
'C_Order.POReference',
(select AD_Element_ID from AD_Element where ColumnName = 'POReference'),
'E265',
'N',
'N',
'N'
 from dual  
where not exists (select 1 from AD_InfoColumn where Name = 'Order Reference'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' ));

update AD_InfoColumn set Updated = sysdate, UpdatedBy = 0, AD_InfoWindow_ID = (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order'), seqNo = 70, description = 'Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner', help = 'The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.', isactive = 'Y', isCentrallyMaintained = 'Y', isDisplayed = 'Y', isQueryCriteria = 'N', AD_Reference_ID = (select AD_Reference_ID from AD_Reference where Name = 'String'), SelectClause = 'C_Order.POReference', AD_Element_ID = (select AD_Element_ID from AD_Element where ColumnName = 'POReference'), entitytype = 'E265', isKey = 'N', isIdentifier = 'N', isRange = 'N' 
where Name = 'Order Reference'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' );

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Order Reference' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )), 'fr_FR', 'Y', 'Référence de la commande (achat ou vente) indiquée par le tiers (fournisseur ou client)','Identifie la référence de  la commande  (référence Tiers) pour une transaction spécifique. Souvent, c''est le numéro de la commande d''achat Tiers, imprimé sur la facture, qui est spécifié. Un numéro standard peut être défini au niveau du Tiers (onglet client de la fenêtre Tiers)','Référence commande'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Order Reference' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'fr_FR');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Référence de la commande (achat ou vente) indiquée par le tiers (fournisseur ou client)',Help = 'Identifie la référence de  la commande  (référence Tiers) pour une transaction spécifique. Souvent, c''est le numéro de la commande d''achat Tiers, imprimé sur la facture, qui est spécifié. Un numéro standard peut être défini au niveau du Tiers (onglet client de la fenêtre Tiers)',Name = 'Référence commande' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Order Reference' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'fr_FR';

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Order Reference' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )), 'nl_NL', 'Y', 'Transactie referentie nummer (verkoop order, inkoop order) van uw relatie.','De order referentie is de order referentie van de relatie voor deze specifieke transactie. Vaak worden er inkoop order nummers gegeven om af te drukken op facturen voor makkelijke herkenning. Een standaard nummer kan worden ingesteld in het relatie scherm.','Order Referentie'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Order Reference' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'nl_NL');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Transactie referentie nummer (verkoop order, inkoop order) van uw relatie.',Help = 'De order referentie is de order referentie van de relatie voor deze specifieke transactie. Vaak worden er inkoop order nummers gegeven om af te drukken op facturen voor makkelijke herkenning. Een standaard nummer kan worden ingesteld in het relatie scherm.',Name = 'Order Referentie' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Order Reference' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'nl_NL';

insert into AD_InfoColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,Name,AD_InfoWindow_ID, seqNo, description, help, isactive, isCentrallyMaintained, isDisplayed, isQueryCriteria, AD_Reference_ID, SelectClause, AD_Element_ID,  entitytype, isKey, isIdentifier, isRange) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_InfoColumn'),'receipt',(select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order'),
80,
'',
'',
'Y',
'Y',
'Y',
'N',
(select AD_Reference_ID from AD_Reference where Name = 'String'),
'(select documentno from m_inout  where m_inout.c_order_id = c_order.c_order_id)',
(select AD_Element_ID from AD_Element where ColumnName = 'receiptno'),
'E265',
'N',
'N',
'N'
 from dual  
where not exists (select 1 from AD_InfoColumn where Name = 'receipt'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' ));

update AD_InfoColumn set Updated = sysdate, UpdatedBy = 0, AD_InfoWindow_ID = (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order'), seqNo = 80, description = '', help = '', isactive = 'Y', isCentrallyMaintained = 'Y', isDisplayed = 'Y', isQueryCriteria = 'N', AD_Reference_ID = (select AD_Reference_ID from AD_Reference where Name = 'String'), SelectClause = '(select documentno from m_inout  where m_inout.c_order_id = c_order.c_order_id)', AD_Element_ID = (select AD_Element_ID from AD_Element where ColumnName = 'receiptno'), entitytype = 'E265', isKey = 'N', isIdentifier = 'N', isRange = 'N' 
where Name = 'receipt'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' );

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='receipt' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )), 'fr_FR', 'Y', '','','Réception'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='receipt' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'fr_FR');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Réception' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='receipt' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'fr_FR';

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='receipt' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )), 'nl_NL', 'Y', '','','receipt'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='receipt' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'nl_NL');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'receipt' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='receipt' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Purchase Order' )) and ad_language = 'nl_NL';

insert into AD_InfoColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,Name,AD_InfoWindow_ID, seqNo, description, help, isactive, isCentrallyMaintained, isDisplayed, isQueryCriteria, AD_Reference_ID, SelectClause, AD_Element_ID,  entitytype, isKey, isIdentifier, isRange) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_InfoColumn'),'Shipment/Receipt',(select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt'),
30,
'Material Shipment Document',
'The Material Shipment / Receipt',
'Y',
'Y',
'N',
'N',
(select AD_Reference_ID from AD_Reference where Name = 'ID'),
'M_InOut.M_InOut_ID',
(select AD_Element_ID from AD_Element where ColumnName = 'M_InOut_ID'),
'E265',
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_InfoColumn where Name = 'Shipment/Receipt'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' ));

update AD_InfoColumn set Updated = sysdate, UpdatedBy = 0, AD_InfoWindow_ID = (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt'), seqNo = 30, description = 'Material Shipment Document', help = 'The Material Shipment / Receipt', isactive = 'Y', isCentrallyMaintained = 'Y', isDisplayed = 'N', isQueryCriteria = 'N', AD_Reference_ID = (select AD_Reference_ID from AD_Reference where Name = 'ID'), SelectClause = 'M_InOut.M_InOut_ID', AD_Element_ID = (select AD_Element_ID from AD_Element where ColumnName = 'M_InOut_ID'), entitytype = 'E265', isKey = 'Y', isIdentifier = 'N', isRange = 'N' 
where Name = 'Shipment/Receipt'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' );

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Shipment/Receipt' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )), 'fr_FR', 'Y', 'Document d''expédition ou de réception','L''ID expédition / réception identifie de manière unique l''expédition ou la réception','Expédition/Réception'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Shipment/Receipt' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'fr_FR');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Document d''expédition ou de réception',Help = 'L''ID expédition / réception identifie de manière unique l''expédition ou la réception',Name = 'Expédition/Réception' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Shipment/Receipt' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'fr_FR';

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Shipment/Receipt' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )), 'nl_NL', 'Y', 'Verzending / ontvangst document.','Het verzending / ontvangst document volgnummer geeft een uniek document voor deze verzending / ontvangst aan.','Verzending / Ontvangst'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Shipment/Receipt' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'nl_NL');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Verzending / ontvangst document.',Help = 'Het verzending / ontvangst document volgnummer geeft een uniek document voor deze verzending / ontvangst aan.',Name = 'Verzending / Ontvangst' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Shipment/Receipt' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'nl_NL';

insert into AD_InfoColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,Name,AD_InfoWindow_ID, seqNo, description, help, isactive, isCentrallyMaintained, isDisplayed, isQueryCriteria, AD_Reference_ID, SelectClause, AD_Element_ID,  entitytype, isKey, isIdentifier, isRange) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_InfoColumn'),'Document No',(select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt'),
10,
'Document sequence number of the document',
'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',
'Y',
'N',
'Y',
'Y',
(select AD_Reference_ID from AD_Reference where Name = 'String'),
'M_InOut.DocumentNo',
(select AD_Element_ID from AD_Element where ColumnName = 'DocumentNo'),
'E265',
'N',
'Y',
'N'
 from dual  
where not exists (select 1 from AD_InfoColumn where Name = 'Document No'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' ));

update AD_InfoColumn set Updated = sysdate, UpdatedBy = 0, AD_InfoWindow_ID = (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt'), seqNo = 10, description = 'Document sequence number of the document', help = 'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', isactive = 'Y', isCentrallyMaintained = 'N', isDisplayed = 'Y', isQueryCriteria = 'Y', AD_Reference_ID = (select AD_Reference_ID from AD_Reference where Name = 'String'), SelectClause = 'M_InOut.DocumentNo', AD_Element_ID = (select AD_Element_ID from AD_Element where ColumnName = 'DocumentNo'), entitytype = 'E265', isKey = 'N', isIdentifier = 'Y', isRange = 'N' 
where Name = 'Document No'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' );

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Document No' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )), 'fr_FR', 'Y', 'N° Réception','','N° Réception'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Document No' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'fr_FR');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'N° Réception',Help = '',Name = 'N° Réception' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Document No' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'fr_FR';

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Document No' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )), 'nl_NL', 'Y', 'Receipt','Het documentnummer is gewoonlijk gegenereerd door het systeem en bepaald door het documenttype. Als het document nog niet is opgeslagen, is het voorlopige nummer weergegeven tussen "<>".  Als het documenttype geen automatische documentnummer volgorde heeft en u creeert een nieuw document, dan is het veld document nr leeg. Dit is voor documenten die gewoonlijk een extern nummer hebben (zoals facturen van leveranciers). Als u het veld leeg laat, zal het systeem zelf een documentnummer genereren. De document nr volgorde dat wordt gebruikt voor dit reservenummer wordt beheerd in het scherm "Document nr. onderhouden".','Receipt'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Document No' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'nl_NL');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Receipt',Help = 'Het documentnummer is gewoonlijk gegenereerd door het systeem en bepaald door het documenttype. Als het document nog niet is opgeslagen, is het voorlopige nummer weergegeven tussen "<>".  Als het documenttype geen automatische documentnummer volgorde heeft en u creeert een nieuw document, dan is het veld document nr leeg. Dit is voor documenten die gewoonlijk een extern nummer hebben (zoals facturen van leveranciers). Als u het veld leeg laat, zal het systeem zelf een documentnummer genereren. De document nr volgorde dat wordt gebruikt voor dit reservenummer wordt beheerd in het scherm "Document nr. onderhouden".',Name = 'Receipt' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Document No' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'nl_NL';

insert into AD_InfoColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,Name,AD_InfoWindow_ID, seqNo, description, help, isactive, isCentrallyMaintained, isDisplayed, isQueryCriteria, AD_Reference_ID, SelectClause, AD_Element_ID,  entitytype, isKey, isIdentifier, isRange) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_InfoColumn'),'Warehouse',(select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt'),
60,
'Storage Warehouse and Service Point',
'The Warehouse identifies a unique Warehouse where products are stored or Services are provided.',
'Y',
'N',
'Y',
'N',
(select AD_Reference_ID from AD_Reference where Name = 'String'),
'(SELECT Name FROM M_Warehouse ws WHERE ws.M_Warehouse_ID=M_InOut.M_Warehouse_ID)',
(select AD_Element_ID from AD_Element where ColumnName = 'M_Warehouse_ID'),
'E265',
'N',
'N',
'N'
 from dual  
where not exists (select 1 from AD_InfoColumn where Name = 'Warehouse'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' ));

update AD_InfoColumn set Updated = sysdate, UpdatedBy = 0, AD_InfoWindow_ID = (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt'), seqNo = 60, description = 'Storage Warehouse and Service Point', help = 'The Warehouse identifies a unique Warehouse where products are stored or Services are provided.', isactive = 'Y', isCentrallyMaintained = 'N', isDisplayed = 'Y', isQueryCriteria = 'N', AD_Reference_ID = (select AD_Reference_ID from AD_Reference where Name = 'String'), SelectClause = '(SELECT Name FROM M_Warehouse ws WHERE ws.M_Warehouse_ID=M_InOut.M_Warehouse_ID)', AD_Element_ID = (select AD_Element_ID from AD_Element where ColumnName = 'M_Warehouse_ID'), entitytype = 'E265', isKey = 'N', isIdentifier = 'N', isRange = 'N' 
where Name = 'Warehouse'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' );

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Warehouse' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )), 'fr_FR', 'Y', 'Magasin ou dépôt','Indique un lieu où sont stockés de la marchandise ou fournis des services','Magasin / dépôt'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Warehouse' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'fr_FR');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Magasin ou dépôt',Help = 'Indique un lieu où sont stockés de la marchandise ou fournis des services',Name = 'Magasin / dépôt' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Warehouse' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'fr_FR';

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Warehouse' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )), 'nl_NL', 'Y', 'Stock of locatie','Het magazijn c.q. service locatie geeft aan waar producten worder opgelsagen of waar vanuit services worden geleverd.','Stock'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Warehouse' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'nl_NL');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Stock of locatie',Help = 'Het magazijn c.q. service locatie geeft aan waar producten worder opgelsagen of waar vanuit services worden geleverd.',Name = 'Stock' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Warehouse' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'nl_NL';

insert into AD_InfoColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,Name,AD_InfoWindow_ID, seqNo, description, help, isactive, isCentrallyMaintained, isDisplayed, isQueryCriteria, AD_Reference_ID, SelectClause, AD_Element_ID,  entitytype, isKey, isIdentifier, isRange) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_InfoColumn'),'Vendor',(select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt'),
40,
'The Vendor of the product/service',
'',
'Y',
'N',
'Y',
'N',
(select AD_Reference_ID from AD_Reference where Name = 'String'),
'(SELECT Name FROM C_BPartner bp WHERE bp.C_BPartner_ID=M_InOut.C_BPartner_ID)',
(select AD_Element_ID from AD_Element where ColumnName = 'Vendor_ID'),
'E265',
'N',
'N',
'N'
 from dual  
where not exists (select 1 from AD_InfoColumn where Name = 'Vendor'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' ));

update AD_InfoColumn set Updated = sysdate, UpdatedBy = 0, AD_InfoWindow_ID = (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt'), seqNo = 40, description = 'The Vendor of the product/service', help = '', isactive = 'Y', isCentrallyMaintained = 'N', isDisplayed = 'Y', isQueryCriteria = 'N', AD_Reference_ID = (select AD_Reference_ID from AD_Reference where Name = 'String'), SelectClause = '(SELECT Name FROM C_BPartner bp WHERE bp.C_BPartner_ID=M_InOut.C_BPartner_ID)', AD_Element_ID = (select AD_Element_ID from AD_Element where ColumnName = 'Vendor_ID'), entitytype = 'E265', isKey = 'N', isIdentifier = 'N', isRange = 'N' 
where Name = 'Vendor'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' );

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Vendor' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )), 'fr_FR', 'Y', '','','Fournisseur'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Vendor' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'fr_FR');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Fournisseur' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Vendor' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'fr_FR';

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Vendor' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )), 'nl_NL', 'Y', '','','Leverancier'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Vendor' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'nl_NL');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Leverancier' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Vendor' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'nl_NL';

insert into AD_InfoColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,Name,AD_InfoWindow_ID, seqNo, description, help, isactive, isCentrallyMaintained, isDisplayed, isQueryCriteria, AD_Reference_ID, SelectClause, AD_Element_ID,  entitytype, isKey, isIdentifier, isRange) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_InfoColumn'),'Organization',(select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt'),
50,
'Organizational entity within Tenant',
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
'Y',
'N',
'Y',
'N',
(select AD_Reference_ID from AD_Reference where Name = 'String'),
'(SELECT Name FROM AD_Org org WHERE org.AD_Org_ID=M_InOut.AD_Org_ID)',
(select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'),
'E265',
'N',
'N',
'N'
 from dual  
where not exists (select 1 from AD_InfoColumn where Name = 'Organization'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' ));

update AD_InfoColumn set Updated = sysdate, UpdatedBy = 0, AD_InfoWindow_ID = (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt'), seqNo = 50, description = 'Organizational entity within Tenant', help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', isactive = 'Y', isCentrallyMaintained = 'N', isDisplayed = 'Y', isQueryCriteria = 'N', AD_Reference_ID = (select AD_Reference_ID from AD_Reference where Name = 'String'), SelectClause = '(SELECT Name FROM AD_Org org WHERE org.AD_Org_ID=M_InOut.AD_Org_ID)', AD_Element_ID = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'), entitytype = 'E265', isKey = 'N', isIdentifier = 'N', isRange = 'N' 
where Name = 'Organization'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' );

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Organization' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )), 'fr_FR', 'Y', 'Etablissement au sein d''une société','une unité est une partie d''une société, (établissement, succursale, bureau, etc...).','Organisation'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Organization' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'fr_FR');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Etablissement au sein d''une société',Help = 'une unité est une partie d''une société, (établissement, succursale, bureau, etc...).',Name = 'Organisation' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Organization' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'fr_FR';

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Organization' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )), 'nl_NL', 'Y', 'Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.','Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.','Organisatie'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Organization' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'nl_NL');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.',Help = 'Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.',Name = 'Organisatie' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Organization' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'nl_NL';

insert into AD_InfoColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,Name,AD_InfoWindow_ID, seqNo, description, help, isactive, isCentrallyMaintained, isDisplayed, isQueryCriteria, AD_Reference_ID, SelectClause, AD_Element_ID,  entitytype, isKey, isIdentifier, isRange) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_InfoColumn'),'Order No',(select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt'),
70,
'',
'',
'Y',
'N',
'Y',
'N',
(select AD_Reference_ID from AD_Reference where Name = 'String'),
'o.DocumentNo',
(select AD_Element_ID from AD_Element where ColumnName = 'OrderDocumentNo'),
'E265',
'N',
'N',
'N'
 from dual  
where not exists (select 1 from AD_InfoColumn where Name = 'Order No'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' ));

update AD_InfoColumn set Updated = sysdate, UpdatedBy = 0, AD_InfoWindow_ID = (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt'), seqNo = 70, description = '', help = '', isactive = 'Y', isCentrallyMaintained = 'N', isDisplayed = 'Y', isQueryCriteria = 'N', AD_Reference_ID = (select AD_Reference_ID from AD_Reference where Name = 'String'), SelectClause = 'o.DocumentNo', AD_Element_ID = (select AD_Element_ID from AD_Element where ColumnName = 'OrderDocumentNo'), entitytype = 'E265', isKey = 'N', isIdentifier = 'N', isRange = 'N' 
where Name = 'Order No'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' );

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Order No' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )), 'fr_FR', 'Y', '','','Commande Achat'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Order No' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'fr_FR');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Commande Achat' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Order No' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'fr_FR';

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Order No' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )), 'nl_NL', 'Y', '','','Inkoop Order'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Order No' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'nl_NL');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Inkoop Order' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Order No' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'nl_NL';

insert into AD_InfoColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,Name,AD_InfoWindow_ID, seqNo, description, help, isactive, isCentrallyMaintained, isDisplayed, isQueryCriteria, AD_Reference_ID, SelectClause, AD_Element_ID,  entitytype, isKey, isIdentifier, isRange) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_InfoColumn'),'Order Reference',(select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt'),
80,
'Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner',
'The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.',
'Y',
'Y',
'Y',
'N',
(select AD_Reference_ID from AD_Reference where Name = 'String'),
'M_InOut.POReference',
(select AD_Element_ID from AD_Element where ColumnName = 'POReference'),
'E265',
'N',
'N',
'N'
 from dual  
where not exists (select 1 from AD_InfoColumn where Name = 'Order Reference'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' ));

update AD_InfoColumn set Updated = sysdate, UpdatedBy = 0, AD_InfoWindow_ID = (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt'), seqNo = 80, description = 'Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner', help = 'The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.', isactive = 'Y', isCentrallyMaintained = 'Y', isDisplayed = 'Y', isQueryCriteria = 'N', AD_Reference_ID = (select AD_Reference_ID from AD_Reference where Name = 'String'), SelectClause = 'M_InOut.POReference', AD_Element_ID = (select AD_Element_ID from AD_Element where ColumnName = 'POReference'), entitytype = 'E265', isKey = 'N', isIdentifier = 'N', isRange = 'N' 
where Name = 'Order Reference'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' );

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Order Reference' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )), 'fr_FR', 'Y', 'Référence de la commande (achat ou vente) indiquée par le tiers (fournisseur ou client)','Identifie la référence de  la commande  (référence Tiers) pour une transaction spécifique. Souvent, c''est le numéro de la commande d''achat Tiers, imprimé sur la facture, qui est spécifié. Un numéro standard peut être défini au niveau du Tiers (onglet client de la fenêtre Tiers)','Référence commande'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Order Reference' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'fr_FR');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Référence de la commande (achat ou vente) indiquée par le tiers (fournisseur ou client)',Help = 'Identifie la référence de  la commande  (référence Tiers) pour une transaction spécifique. Souvent, c''est le numéro de la commande d''achat Tiers, imprimé sur la facture, qui est spécifié. Un numéro standard peut être défini au niveau du Tiers (onglet client de la fenêtre Tiers)',Name = 'Référence commande' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Order Reference' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'fr_FR';

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Order Reference' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )), 'nl_NL', 'Y', 'Transactie referentie nummer (verkoop order, inkoop order) van uw relatie.','De order referentie is de order referentie van de relatie voor deze specifieke transactie. Vaak worden er inkoop order nummers gegeven om af te drukken op facturen voor makkelijke herkenning. Een standaard nummer kan worden ingesteld in het relatie scherm.','Order Referentie'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Order Reference' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'nl_NL');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Transactie referentie nummer (verkoop order, inkoop order) van uw relatie.',Help = 'De order referentie is de order referentie van de relatie voor deze specifieke transactie. Vaak worden er inkoop order nummers gegeven om af te drukken op facturen voor makkelijke herkenning. Een standaard nummer kan worden ingesteld in het relatie scherm.',Name = 'Order Referentie' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Order Reference' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'nl_NL';

insert into AD_InfoColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,Name,AD_InfoWindow_ID, seqNo, description, help, isactive, isCentrallyMaintained, isDisplayed, isQueryCriteria, AD_Reference_ID, SelectClause, AD_Element_ID,  entitytype, isKey, isIdentifier, isRange) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_InfoColumn'),'Document Status',(select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt'),
90,
'The current status of the document',
'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',
'Y',
'N',
'Y',
'N',
(select AD_Reference_ID from AD_Reference where Name = 'String'),
'docn.Name',
(select AD_Element_ID from AD_Element where ColumnName = 'DocStatus'),
'E265',
'N',
'N',
'N'
 from dual  
where not exists (select 1 from AD_InfoColumn where Name = 'Document Status'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' ));

update AD_InfoColumn set Updated = sysdate, UpdatedBy = 0, AD_InfoWindow_ID = (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt'), seqNo = 90, description = 'The current status of the document', help = 'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field', isactive = 'Y', isCentrallyMaintained = 'N', isDisplayed = 'Y', isQueryCriteria = 'N', AD_Reference_ID = (select AD_Reference_ID from AD_Reference where Name = 'String'), SelectClause = 'docn.Name', AD_Element_ID = (select AD_Element_ID from AD_Element where ColumnName = 'DocStatus'), entitytype = 'E265', isKey = 'N', isIdentifier = 'N', isRange = 'N' 
where Name = 'Document Status'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' );

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Document Status' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )), 'fr_FR', 'Y', 'Statut actuel du document','Pour changer le statut du document, utiliser le bouton changement de statut document','Statut document'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Document Status' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'fr_FR');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Statut actuel du document',Help = 'Pour changer le statut du document, utiliser le bouton changement de statut document',Name = 'Statut document' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Document Status' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'fr_FR';

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Document Status' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )), 'nl_NL', 'Y', 'De huidige status van het document.','De document status geeft de huidige status van een document weer. Als u de document status wilt wijzigen gebruikt u het gewenst document veld.','Document Status'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Document Status' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'nl_NL');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'De huidige status van het document.',Help = 'De document status geeft de huidige status van een document weer. Als u de document status wilt wijzigen gebruikt u het gewenst document veld.',Name = 'Document Status' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Document Status' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'nl_NL';

insert into AD_InfoColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,Name,AD_InfoWindow_ID, seqNo, description, help, isactive, isCentrallyMaintained, isDisplayed, isQueryCriteria, AD_Reference_ID, SelectClause, AD_Element_ID,  entitytype, isKey, isIdentifier, isRange) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_InfoColumn'),'Order',(select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt'),
20,
'Order',
'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.',
'Y',
'N',
'N',
'Y',
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
'o.C_Order_ID',
(select AD_Element_ID from AD_Element where ColumnName = 'C_Order_ID'),
'E265',
'N',
'N',
'N'
 from dual  
where not exists (select 1 from AD_InfoColumn where Name = 'Order'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' ));

update AD_InfoColumn set Updated = sysdate, UpdatedBy = 0, AD_InfoWindow_ID = (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt'), seqNo = 20, description = 'Order', help = 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.', isactive = 'Y', isCentrallyMaintained = 'N', isDisplayed = 'N', isQueryCriteria = 'Y', AD_Reference_ID = (select AD_Reference_ID from AD_Reference where Name = 'Search'), SelectClause = 'o.C_Order_ID', AD_Element_ID = (select AD_Element_ID from AD_Element where ColumnName = 'C_Order_ID'), entitytype = 'E265', isKey = 'N', isIdentifier = 'N', isRange = 'N' 
where Name = 'Order'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' );

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Order' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )), 'fr_FR', 'Y', 'Commande Achat','Identificateur unique d''une commande. Contrôlé via les documents, et dépendant du type de ceux-ci (compteur différent par type de document)','Commande Achat'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Order' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'fr_FR');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Commande Achat',Help = 'Identificateur unique d''une commande. Contrôlé via les documents, et dépendant du type de ceux-ci (compteur différent par type de document)',Name = 'Commande Achat' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Order' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'fr_FR';

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='Order' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )), 'nl_NL', 'Y', 'Inkoop Order','The Sales Order ID is a unique identifier of a Sales Order.  This is controlled by the document sequence for this document type.','Inkoop Order'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Order' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'nl_NL');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Inkoop Order',Help = 'The Sales Order ID is a unique identifier of a Sales Order.  This is controlled by the document sequence for this document type.',Name = 'Inkoop Order' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='Order' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Receipt' )) and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'EC_PO_InfoWindow_ID','E265',
'1000001',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'EC_PO_InfoWindow_ID' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'E265', msgtext = '1000001', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'EC_PO_InfoWindow_ID' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_PO_InfoWindow_ID'), 'fr_FR', 'Y', '1000001',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_PO_InfoWindow_ID') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '1000001',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_PO_InfoWindow_ID') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_PO_InfoWindow_ID'), 'nl_NL', 'Y', '1000001',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_PO_InfoWindow_ID') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '1000001',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_PO_InfoWindow_ID') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'EC_RC_InfoWindow_ID','E265',
'1000101',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'EC_RC_InfoWindow_ID' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'E265', msgtext = '1000101', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'EC_RC_InfoWindow_ID' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_RC_InfoWindow_ID'), 'fr_FR', 'Y', '1000101',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_RC_InfoWindow_ID') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '1000101',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_RC_InfoWindow_ID') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_RC_InfoWindow_ID'), 'nl_NL', 'Y', '1000101',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_RC_InfoWindow_ID') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '1000101',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_RC_InfoWindow_ID') and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '48265 - Modification Ecran de Réconciliation OA-FA', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E265' ;