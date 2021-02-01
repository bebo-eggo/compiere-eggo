ALTER TABLE C_Order ADD Z_TotPayment NUMBER;
ALTER TABLE I_PosOrder ADD Z_TotPayment NUMBER;
ALTER TABLE C_OrderLine ADD Z_IsReturned CHAR(1) DEFAULT 'N' CHECK (Z_IsReturned IN ('Y','N')) NOT NULL;
ALTER TABLE I_PosOrderLine ADD Z_IsReturned CHAR(1) DEFAULT 'N' CHECK (Z_IsReturned IN ('Y','N')) NOT NULL;
ALTER TABLE I_PosOrderLine ADD QtyReturned NUMBER;