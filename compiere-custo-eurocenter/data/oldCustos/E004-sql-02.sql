ALTER TABLE C_OrderLine ADD QtyInProcess NUMBER DEFAULT 0 NOT NULL;
ALTER TABLE C_DocType ADD IsPosSO CHAR(1) DEFAULT 'N' CHECK (IsPosSO IN ('Y','N'));
ALTER TABLE C_DocType ADD IsPosSav CHAR(1) DEFAULT 'N' CHECK (IsPosSav IN ('Y','N'));
