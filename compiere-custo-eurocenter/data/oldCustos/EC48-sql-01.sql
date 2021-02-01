ALTER TABLE C_BankAccountDoc ADD C_BankAccount_To_ID NUMBER(10); 
ALTER TABLE C_BankAccountDoc ADD CONSTRAINT FK455_1023829 FOREIGN KEY (C_BankAccount_To_ID) REFERENCES C_BankAccount (C_BankAccount_ID);

ALTER TABLE C_BankAccountDoc ADD XX_BankTftDetail CHAR(1) DEFAULT 'N' CHECK (XX_BankTftDetail IN ('Y','N')) NOT NULL;

ALTER TABLE C_Payment ADD XX_BankStatment_ID NUMBER(10); 
ALTER TABLE C_Payment ADD CONSTRAINT FK335_1023831 FOREIGN KEY (XX_BankStatment_ID) REFERENCES C_BankStatement (C_BankStatement_ID);
