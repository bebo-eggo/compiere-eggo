ALTER TABLE C_Invoice ADD XX_ImportPDFFileInvoice CHAR(1);
ALTER TABLE C_Invoice MODIFY IsArcoPrint CHAR(1) DEFAULT 'N'; 
UPDATE C_Invoice SET IsArcoPrint='N' WHERE IsArcoPrint IS NULL;