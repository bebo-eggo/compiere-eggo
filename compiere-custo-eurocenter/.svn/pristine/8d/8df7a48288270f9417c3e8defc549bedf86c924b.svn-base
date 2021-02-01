UPDATE AD_Process_Para
SET AD_REFERENCE_ID     = 17,
  AD_REFERENCE_VALUE_ID = (SELECT AD_Reference_ID FROM AD_Reference WHERE NAME ='DoubtfulIncluded_L'),
  ISMANDATORY='Y'
WHERE ColumnName='IsDoubtfulIncluded'
AND AD_Process_ID = (SELECT AD_Process_ID FROM AD_Process WHERE Value ='Z_BalanceTiers');