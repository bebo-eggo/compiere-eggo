UPDATE AD_REF_LIST set NAME = 'Consignations' where Value = 'LOC-CONS';
update AD_Field set IsDisplayed = 'N' where AD_Field_ID = 1012182;
ALTER TABLE C_BPartner ADD IsCocontractant CHAR(1) DEFAULT 'N' CHECK (IsCocontractant IN ('Y','N')); 
UPDATE AD_Column set ReadOnlyLogic = '@C_Order_ID@=0 | @C_DocTypeTarget_ID@=1000028' where AD_Column_ID=8765;
ALTER TABLE I_Order ADD Z_SoldeGI NUMBER DEFAULT 0;