ALTER TABLE Z_PosWfAction ADD IsGenConsignation CHAR(1) DEFAULT 'N' CHECK (IsGenConsignation IN ('Y','N'));
ALTER TABLE M_Movement ADD C_BPartner_ID NUMBER(10);
ALTER TABLE M_Movement ADD CONSTRAINT FK323_1008364 FOREIGN KEY (C_BPartner_ID) REFERENCES C_BPartner (C_BPartner_ID);