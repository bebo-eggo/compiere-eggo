ALTER TABLE C_DocType ADD IsNotAutoInvoiced CHAR(1) DEFAULT 'N' CHECK (IsNotAutoInvoiced IN ('Y','N'));
update C_DocType set IsNotAutoInvoiced = 'N';
update C_DocType set IsNotAutoInvoiced = 'Y' where name = 'Contrat Store';