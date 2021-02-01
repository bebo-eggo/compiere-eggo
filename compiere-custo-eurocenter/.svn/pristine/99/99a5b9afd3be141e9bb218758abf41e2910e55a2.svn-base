ALTER TABLE M_Locator ADD IsEggo CHAR(1) DEFAULT 'N' CHECK (IsEggo IN ('Y','N')) NOT NULL;
ALTER TABLE M_Locator ADD IsPOS CHAR(1) DEFAULT 'N' CHECK (IsPOS IN ('Y','N')) NOT NULL;
ALTER TABLE M_PriceList ADD IsPOS CHAR(1) DEFAULT 'N' CHECK (IsPOS IN ('Y','N')) NOT NULL;
ALTER TABLE M_PriceList ADD IsEggo CHAR(1) DEFAULT 'N' CHECK (IsEggo IN ('Y','N')) NOT NULL;
call syncposdatabase('ALTER TABLE M_Locator ADD IsPOS CHAR(1) DEFAULT ''N'' CHECK (IsPOS IN (''Y'',''N'')) NOT NULL');
call syncposdatabase('ALTER TABLE M_Locator ADD IsEggo CHAR(1) DEFAULT ''N'' CHECK (IsEggo IN (''Y'',''N'')) NOT NULL');
call syncposdatabase('ALTER TABLE M_PriceList ADD IsPOS CHAR(1) DEFAULT ''N'' CHECK (IsPOS IN (''Y'',''N'')) NOT NULL');
call syncposdatabase('ALTER TABLE M_PriceList ADD IsEggo CHAR(1) DEFAULT ''N'' CHECK (IsEggo IN (''Y'',''N'')) NOT NULL');