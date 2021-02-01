ALTER TABLE M_Product_Category ADD M_AttributeSet_ID NUMBER(10);
ALTER TABLE M_Product_Category ADD CONSTRAINT FKPRCAT_ATTBSET FOREIGN KEY (M_AttributeSet_ID) REFERENCES M_AttributeSet (M_AttributeSet_ID);
ALTER TABLE M_Attribute ADD Is_ZPrintWeb CHAR(1) DEFAULT 'N' CHECK (Is_ZPrintWeb IN ('Y','N')) NOT NULL;
ALTER TABLE M_Attribute ADD Is_ZPrintLabels CHAR(1) DEFAULT 'N' CHECK (Is_ZPrintLabels IN ('Y','N')) NOT NULL;
ALTER TABLE M_Product ADD Z_S_Famille_ID NUMBER(10) DEFAULT NULL;
ALTER TABLE M_Product ADD CONSTRAINT FKPRD_SFAMI FOREIGN KEY (Z_S_Famille_ID) REFERENCES Z_S_Famille (Z_S_Famille_ID);
ALTER TABLE M_Product ADD Z_S_S_Famille_ID NUMBER(10);
ALTER TABLE M_Product ADD CONSTRAINT FKPRD_SSFAMI FOREIGN KEY (Z_S_S_Famille_ID) REFERENCES Z_S_S_Famille (Z_S_S_Famille_ID);
ALTER TABLE M_Product ADD Z_S_S_S_Famille_ID NUMBER(10);
ALTER TABLE M_Product ADD CONSTRAINT FPRD_SSSFAMI FOREIGN KEY (Z_S_S_S_Famille_ID) REFERENCES Z_S_S_S_Famille (Z_S_S_S_Famille_ID);
ALTER TABLE M_Product ADD Z_Gamme_ID NUMBER(10) DEFAULT NULL;
ALTER TABLE M_Product ADD CONSTRAINT PRD_GAMME FOREIGN KEY (Z_Gamme_ID) REFERENCES Z_Gamme (Z_Gamme_ID);
ALTER TABLE M_Product ADD Z_PackageWeight NUMBER DEFAULT 0 NOT NULL;
ALTER TABLE "M_PRODUCTDOWNLOAD" ADD CONSTRAINT "PROD_NAME_LEAD" UNIQUE("M_PRODUCT_ID","NAME","ISLEADDOWNLOAD");
ALTER TABLE M_ProductDownload ADD Description NVARCHAR2(255);
ALTER TABLE M_PriceList_Version ADD Is_ZFolder CHAR(1) DEFAULT 'N' CHECK (Is_ZFolder IN ('Y','N')) NOT NULL;
UPDATE AD_Tab_Trl SET Name = 'Famille' WHERE AD_Tab_ID =(SELECT AD_Tab_ID FROM AD_Tab WHERE VALUE = 'Product Category_189') AND AD_LANGUAGE = 'fr_FR';