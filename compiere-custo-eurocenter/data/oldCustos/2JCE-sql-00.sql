ALTER TABLE C_BPartner ADD Z_JnlImportInvoice VARCHAR2(30);
call syncposdatabase('ALTER TABLE C_BPartner ADD Z_JnlImportInvoice VARCHAR2(30)');

ALTER TABLE C_BPartner ADD CONSTRAINT FK291_1024845 FOREIGN KEY (Z_JnlImportInvoice) REFERENCES C_DocType (C_DocType_ID)
call syncposdatabase('ALTER TABLE C_BPartner ADD CONSTRAINT FK291_1024845 FOREIGN KEY (Z_JnlImportInvoice) REFERENCES C_DocType (C_DocType_ID)');

ALTER TABLE C_BPartner ADD Z_JnlImportCreditNote VARCHAR2(30);
call syncposdatabase('ALTER TABLE C_BPartner ADD Z_JnlImportCreditNote VARCHAR2(30)');

ALTER TABLE C_BPartner ADD CONSTRAINT FK291_1024846 FOREIGN KEY (Z_JnlImportCreditNote) REFERENCES C_DocType (C_DocType_ID);
call syncposdatabase('ALTER TABLE C_BPartner ADD CONSTRAINT FK291_1024846 FOREIGN KEY (Z_JnlImportCreditNote) REFERENCES C_DocType (C_DocType_ID)');
