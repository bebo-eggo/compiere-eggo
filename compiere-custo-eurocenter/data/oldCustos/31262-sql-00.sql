CREATE OR REPLACE FORCE VIEW RV_InvoiceValidator (C_INVOICE_ID, AD_CLIENT_ID, AD_ORG_ID, UPDATED, UPDATEDBY, CREATED, CREATEDBY, ISACTIVE, XX_InvoiceValidator_ID, DOCUMENTNO, C_BPARTNER_ID, GRANDTOTAL, DOCSTATUS, IsSOTrx) AS 
SELECT C_Invoice_ID, AD_Client_ID, AD_Org_ID, Updated, UpdatedBy,Created, CreatedBy, isActive, XX_InvoiceValidator_ID,
DocumentNo, C_BPartner_ID, GrandTotal, DocStatus, IsSOTrx
FROM C_Invoice
where DOCSTATUS in ('DR','IN') AND XX_InvoiceValidator_ID IS NOT NULL AND IsSOTrx='N';