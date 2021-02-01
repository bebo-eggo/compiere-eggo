ALTER TABLE M_Product ADD IsFusion CHAR(1) DEFAULT 'Y' CHECK (IsFusion IN ('Y','N')) NOT NULL;
ALTER TABLE Z_S_Famille ADD NameFusion NVARCHAR2(100);
ALTER TABLE Z_S_S_Famille ADD NameFusion NVARCHAR2(100);
Update Z_S_Famille set NameFusion=Name;
Update Z_S_S_Famille set NameFusion=Name;
ALTER TABLE XX_EXPORTFUSION ADD (C_CURRENCY_ID NUMBER );