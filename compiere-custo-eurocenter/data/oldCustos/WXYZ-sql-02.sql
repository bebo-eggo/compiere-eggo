UPDATE AD_Process SET CLASSNAME ='com.audaxis.compiere.xls.ExportXlsBalanceTiers' WHERE CLASSNAME ='com.audaxis.compiere.process.xls.ExportXlsBalanceTiers';
UPDATE AD_Process SET CLASSNAME ='com.audaxis.compiere.xls.ExportXlsBalanceGenV2' WHERE CLASSNAME ='com.audaxis.compiere.process.xls.ExportXlsBalanceGenV2';
UPDATE AD_Process SET CLASSNAME ='com.audaxis.compiere.xls.ExportXlsBalanceAging' WHERE CLASSNAME ='com.audaxis.compiere.process.xls.ExportXlsBalanceAging';

CREATE INDEX FA_ACC_CL_AS_PT_001 ON FACT_ACCT("ACCOUNT_ID","AD_CLIENT_ID","C_ACCTSCHEMA_ID","POSTINGTYPE");

UPDATE AD_Process_PARA SET DefaultValue=30 WHERE ColumnName='Echu1' AND AD_process_ID = (SELECT AD_Process_ID FROM AD_Process WHERE VALUE='ZXlsBalanceAgee');
UPDATE AD_Process_PARA SET DefaultValue=60 WHERE ColumnName='Echu2' AND AD_process_ID = (SELECT AD_Process_ID FROM AD_Process WHERE VALUE='ZXlsBalanceAgee');
UPDATE AD_Process_PARA SET DefaultValue=90 WHERE ColumnName='Echu3' AND AD_process_ID = (SELECT AD_Process_ID FROM AD_Process WHERE VALUE='ZXlsBalanceAgee');
