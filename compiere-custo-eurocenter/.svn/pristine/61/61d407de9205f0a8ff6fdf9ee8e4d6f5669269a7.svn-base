DELETE ad_message WHERE value ='EC_RemiseCheque_Subpaymentrule';

UPDATE AD_Column
SET ad_val_rule_id = NULL
WHERE ad_column_id =
  (SELECT ad_column_id
  FROM ad_column
  WHERE columnname='ZSubPaymentRule_ID'
  AND ad_table_id =
    (SELECT ad_table_id FROM ad_table WHERE tablename='Z_CheckDelivery'
    )
  );
  
DELETE AD_Val_Rule WHERE NAME='ZSubPayment Remise';