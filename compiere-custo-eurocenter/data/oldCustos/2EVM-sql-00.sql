ALTER TABLE C_DocTypeInfo ADD IsZPOBatch CHAR(1) DEFAULT 'N' CHECK (IsZPOBatch IN ('Y','N')) NOT NULL;