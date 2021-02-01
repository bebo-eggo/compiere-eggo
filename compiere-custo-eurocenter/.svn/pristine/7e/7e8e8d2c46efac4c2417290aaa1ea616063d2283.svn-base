ALTER TABLE Z_Interventions ADD XX_Hours NUMBER;
ALTER TABLE Z_Interventions ADD XX_PM CHAR(1) DEFAULT 'N' CHECK (XX_PM IN ('Y','N')) NOT NULL;
ALTER TABLE Z_Interventions ADD XX_AM CHAR(1) DEFAULT 'N' CHECK (XX_AM IN ('Y','N')) NOT NULL;

ALTER TABLE C_DocType ADD XX_IsPlannification CHAR(1) DEFAULT 'N' CHECK (XX_IsPlannification IN ('Y','N')) NOT NULL;
ALTER TABLE Z_Interventions ADD XX_IsSecVendor CHAR(1) DEFAULT 'N' CHECK (XX_IsSecVendor IN ('Y','N')) NOT NULL;

update ad_tab set whereclause = 'XX_IsSecVendor=''N''' where value = 'Z_Interventions' ;