ALTER TABLE I_Invoice ADD ZZ_PODocNo NVARCHAR2(50);
ALTER TABLE I_Invoice ADD C_OrderPO_ID NUMBER(10);
ALTER TABLE I_Invoice ADD C_OrderLinePO_ID NUMBER(10);

ALTER TABLE I_Invoice ADD IsMatched CHAR(1) DEFAULT 'N' CHECK (IsMatched IN ('Y','N'));
ALTER TABLE I_Invoice ADD IsForceToInvoice CHAR(1) DEFAULT 'N' CHECK (IsForceToInvoice IN ('Y','N'));
