ALTER TABLE C_BPartner ADD IsMonteur CHAR(1) DEFAULT 'N' CHECK (IsMonteur IN ('Y','N')) NOT NULL;
ALTER TABLE C_BPartner MODIFY IsMonteur CHAR(1) DEFAULT 'N';
ALTER TABLE C_Order ADD Monteur_ID NUMBER(10);
ALTER TABLE C_Order ADD CONSTRAINT FK259_1011737 FOREIGN KEY (Monteur_ID) REFERENCES C_BPartner (C_BPartner_ID);