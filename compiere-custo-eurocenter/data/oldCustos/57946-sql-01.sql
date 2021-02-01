CREATE OR REPLACE VIEW RV_INVOICEORDER (ROW_NUMBER, C_Invoice_ID, documentno)
AS
SELECT ROW_NUMBER() OVER (ORDER BY NLSSORT(documentno, 'NLS_SORT=BINARY')) rno, 
C_Invoice_ID, documentno
FROM c_invoice
order by NLSSORT(documentno, 'NLS_SORT=BINARY');
/