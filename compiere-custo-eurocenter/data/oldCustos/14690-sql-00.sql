ALTER TABLE C_AcctSchema_Default ADD Z_Production_Discrepency_Acct NUMBER(10) DEFAULT NULL;
ALTER TABLE C_AcctSchema_Default ADD CONSTRAINT z_asc_pdc_acct FOREIGN KEY (z_production_discrepency_acct) REFERENCES C_VALIDCOMBINATION (C_VALIDCOMBINATION_ID) ENABLE;
