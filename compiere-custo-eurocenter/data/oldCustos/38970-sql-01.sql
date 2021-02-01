ALTER TABLE C_BankAccountDoc ADD IsCashDeposit CHAR(1) DEFAULT 'N' CHECK (IsCashDeposit IN ('Y','N'));
ALTER TABLE ZSubPaymentRule ADD C_Charge_ID NUMBER(10);
ALTER TABLE ZSubPaymentRule ADD CONSTRAINT FK1000126_1010776 FOREIGN KEY (C_Charge_ID) REFERENCES C_Charge (C_Charge_ID);