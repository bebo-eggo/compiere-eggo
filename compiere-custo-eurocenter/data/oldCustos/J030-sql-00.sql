ALTER TABLE C_DocType ADD IsGeneratePayment CHAR(1) DEFAULT 'N' CHECK (IsGeneratePayment IN ('Y','N'));
ALTER TABLE C_Order ADD GeneratePayment CHAR(1) DEFAULT 'N';