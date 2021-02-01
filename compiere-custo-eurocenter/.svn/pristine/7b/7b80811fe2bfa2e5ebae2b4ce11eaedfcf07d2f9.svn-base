UPDATE AD_Column_Trl
SET Updated         = sysdate,
  UpdatedBy         = 0,
  Name              = 'Date de livraison souhaitée'
WHERE AD_Column_ID IN
  (SELECT AD_Column_ID
  FROM AD_Column
  WHERE ColumnName ='DatePromised'
  AND ad_table_id IN
    (SELECT ad_table_id FROM ad_table WHERE tablename = 'C_Order'
    )
  )
AND ad_language = 'fr_FR';

UPDATE AD_Field_Trl
SET Updated        = sysdate,
  UpdatedBy        = 0,
  Description      = 'Date de livraison souhaitée',
  Help             = 'Date de livraison souhaitée',
  Name             = 'Date de livraison souhaitée'
WHERE AD_Field_ID IN
  (SELECT AD_Field_ID
  FROM AD_Field
  WHERE ad_column_id=
    (SELECT ad_column_id
    FROM ad_column
    WHERE columnname = 'DatePromised'
    AND ad_table_id IN
      (SELECT ad_table_id FROM ad_table WHERE tablename ='C_Order'
      )
    )
  AND ad_tab_id IN
    (SELECT ad_tab_id
    FROM ad_tab
    WHERE name = 'Order'
    )
  )
AND ad_language = 'fr_FR';

ALTER TABLE Z_OrderPaymSchedule ADD Z_TypeEcheance_ID NUMBER(10);

ALTER TABLE C_Order ADD Z_DateT2 DATE;

ALTER TABLE AD_Client ADD IsAdvancedBO CHAR(1) DEFAULT 'N';

ALTER TABLE Z_TypeEcheance ADD ZSubPaymentRule_ID NUMBER(10);
ALTER TABLE Z_TypeEcheance ADD CONSTRAINT FK1001794_1011354 FOREIGN KEY (ZSubPaymentRule_ID) REFERENCES ZSubPaymentRule (ZSubPaymentRule_ID);
ALTER TABLE Z_OrderPaymSchedule ADD InvoicePrint CHAR(1);
ALTER TABLE Z_TypeEcheance ADD IsUnique CHAR(1) DEFAULT 'N' CHECK (IsUnique IN ('Y','N'));