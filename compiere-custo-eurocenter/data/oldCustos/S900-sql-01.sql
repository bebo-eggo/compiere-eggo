ALTER TABLE C_ElementValue ADD IsBPAccount CHAR(1) DEFAULT 'N' CHECK (IsBPAccount IN ('Y','N')) NOT NULL;
