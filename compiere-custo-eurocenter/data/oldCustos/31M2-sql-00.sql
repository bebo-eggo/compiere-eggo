ALTER TABLE C_Order ADD XX_IsSAV CHAR(1) DEFAULT 'N' CHECK (XX_IsSAV IN ('Y','N')) NOT NULL;