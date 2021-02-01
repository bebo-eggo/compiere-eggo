ALTER TABLE M_PriceList ADD IsCostList CHAR(1) DEFAULT 'N' CHECK (IsCostList IN ('Y','N'));

call syncposdatabase('ALTER TABLE M_PriceList ADD IsCostList CHAR(1) DEFAULT ''N'' CHECK (IsCostList IN (''Y'',''N''))');
