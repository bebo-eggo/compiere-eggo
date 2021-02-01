ALTER TABLE AD_OrgInfo ADD IsEggo CHAR(1) DEFAULT 'N' CHECK (IsEggo IN ('Y','N')) NOT NULL;
call syncposdatabase('ALTER TABLE AD_OrgInfo ADD IsEggo CHAR(1) DEFAULT ''N'' CHECK (IsEggo IN (''Y'',''N'')) NOT NULL');
ALTER TABLE AD_OrgInfo ADD IsPOS CHAR(1) DEFAULT 'N' CHECK (IsPOS IN ('Y','N')) NOT NULL;
call syncposdatabase('ALTER TABLE AD_OrgInfo ADD IsPOS CHAR(1) DEFAULT ''N'' CHECK (IsPOS IN (''Y'',''N'')) NOT NULL');
ALTER TABLE C_DocTypeInfo ADD IsRequisition CHAR(1) DEFAULT 'N' CHECK (IsRequisition IN ('Y','N')) NOT NULL;
ALTER TABLE C_DocTypeInfo ADD IsPOS CHAR(1) DEFAULT 'N' CHECK (IsPOS IN ('Y','N')) NOT NULL;
ALTER TABLE C_BPartner_Location ADD IsEggo CHAR(1) DEFAULT 'N' CHECK (IsEggo IN ('Y','N')) NOT NULL;
call syncposdatabase('ALTER TABLE C_BPartner_Location ADD IsEggo CHAR(1) DEFAULT ''N'' CHECK (IsEggo IN (''Y'',''N'')) NOT NULL');
ALTER TABLE Z_LocatorType ADD IsConsignation CHAR(1) DEFAULT 'N' CHECK (IsConsignation IN ('Y','N')) NOT NULL;
ALTER TABLE AD_User ADD IsEggo CHAR(1) DEFAULT 'N' CHECK (IsEggo IN ('Y','N'));
call syncposdatabase('ALTER TABLE AD_User ADD IsEggo CHAR(1) DEFAULT ''N'' CHECK (IsEggo IN (''Y'',''N''))');