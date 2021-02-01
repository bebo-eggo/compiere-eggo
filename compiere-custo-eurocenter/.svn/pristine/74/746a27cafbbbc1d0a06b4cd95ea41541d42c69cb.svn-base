ALTER TABLE AD_User ADD IsContactDirect CHAR(1) DEFAULT 'Y' CHECK (IsContactDirect IN ('Y','N')) NOT NULL;
UPDATE AD_Column set ISMandatory = 'Y', isMandatoryUI = 'Y' where AD_COLUMN_ID in (5396,8743,4291);
ALTER TABLE C_BPartner ADD IsSoc CHAR(1) DEFAULT 'N' CHECK (IsSoc IN ('Y','N')) NOT NULL;
UPDATE AD_Column set MandatoryLogic = '@IsSoc@=Y' where AD_COLUMN_ID = 2909;
ALTER TABLE C_Greeting ADD IsSoc CHAR(1) DEFAULT 'N' CHECK (IsSoc IN ('Y','N')) NOT NULL;
ALTER TABLE C_Greeting ADD IsOnePers CHAR(1) DEFAULT 'N' CHECK (IsOnePers IN ('Y','N')) NOT NULL;
ALTER TABLE C_Greeting ADD Is2Pers CHAR(1) DEFAULT 'N' CHECK (Is2Pers IN ('Y','N')) NOT NULL;