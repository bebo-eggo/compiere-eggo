ALTER TABLE C_BPartner ADD IsArcoValidator CHAR(1) DEFAULT 'N' CHECK (IsArcoValidator IN ('Y','N'));