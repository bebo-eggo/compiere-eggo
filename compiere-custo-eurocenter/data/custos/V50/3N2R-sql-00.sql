ALTER TABLE M_Product_Category ADD XX_Role_Able_Exped CHAR(1) DEFAULT 'N' CHECK (XX_Role_Able_Exped IN ('Y','N')) NOT NULL;
ALTER TABLE Z_S_Famille ADD XX_Role_Able_Exped CHAR(1) DEFAULT 'N' CHECK (XX_Role_Able_Exped IN ('Y','N')) NOT NULL;
ALTER TABLE M_Product ADD XX_Role_Able_Exped CHAR(1) DEFAULT 'N' CHECK (XX_Role_Able_Exped IN ('Y','N')) NOT NULL;
update AD_Window_Access set IsReadWrite = 'N' where AD_Window_ID = 184 and AD_Role_ID in (1000740,1001767);
