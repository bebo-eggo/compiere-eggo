ALTER TABLE C_DocTypeInfo ADD IsInTransit CHAR(1) DEFAULT 'N' CHECK (IsInTransit IN ('Y','N'));