ALTER TABLE C_OrderDownload ADD IsArControled CHAR(1) DEFAULT 'Y' CHECK (IsArControled IN ('Y','N')) NOT NULL;
ALTER TABLE C_OrderDownload ADD Z_FromExtSource CHAR(1) DEFAULT 'Y' CHECK (Z_FromExtSource IN ('Y','N')) NOT NULL;
