ALTER TABLE M_Attribute ADD Is_ZFilter CHAR(1) DEFAULT 'N' CHECK (Is_ZFilter IN ('Y','N')) NOT NULL;
call syncposdatabase('ALTER TABLE M_Attribute ADD Is_ZFilter CHAR(1) DEFAULT ''N'' CHECK (Is_ZFilter IN (''Y'',''N'')) NOT NULL');