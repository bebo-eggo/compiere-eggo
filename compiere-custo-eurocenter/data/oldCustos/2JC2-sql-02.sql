call syncposdatabase('ALTER TABLE I_Invoice ADD VendorDocNum NVARCHAR2(30)');


call syncposdatabase('ALTER TABLE I_Invoice ADD ZZ_OrgLine_ID NUMBER(10)');
call syncposdatabase('ALTER TABLE I_Invoice ADD CONSTRAINT FK598_1024836 FOREIGN KEY (ZZ_OrgLine_ID) REFERENCES AD_Org (AD_Org_ID)');

call syncposdatabase('ALTER TABLE AD_User ADD IsVendorNobilia CHAR(1) DEFAULT ''N'' CHECK (IsVendorNobilia IN (''Y'',''N''))');

call syncposdatabase('ALTER TABLE C_PaymentTerm ADD ZZ_ValueNobilia NVARCHAR2(60)');

call syncposdatabase('ALTER TABLE AD_OrgInfo ADD ZZ_NobiliaBuyer NVARCHAR2(30)');

call syncposdatabase('ALTER TABLE I_Invoice ADD ZZ_VatNumber NVARCHAR2(30)');

call syncposdatabase('ALTER TABLE I_Invoice ADD ZZ_BuyerGnl NVARCHAR2(30)');


call syncposdatabase('ALTER TABLE I_Invoice ADD ZZ_NobiliaCreditTerm NVARCHAR2(60)');

call syncposdatabase('ALTER TABLE I_Invoice ADD ZZ_FileName NVARCHAR2(255)');


call syncposdatabase('ALTER TABLE C_Invoice ADD ZZ_FileName NVARCHAR2(255)');


call syncposdatabase('ALTER TABLE I_Invoice ADD InvoiceTotalAmt NUMBER');