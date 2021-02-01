ALTER TABLE I_Product ADD Description_nl_NL NVARCHAR2(255); 
ALTER TABLE I_Product ADD IsWebStoreFeatured CHAR(1) DEFAULT 'N' CHECK (IsWebStoreFeatured IN ('Y','N')) NOT NULL; 