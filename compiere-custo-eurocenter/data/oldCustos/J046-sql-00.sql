ALTER TABLE C_Order ADD Z_Warranty CHAR(1) DEFAULT 'N' CHECK (Z_Warranty IN ('Y','N')) NOT NULL;