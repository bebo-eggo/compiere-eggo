 UPDATE AD_Field_Trl SET name='N° Facture fournisseur'
  WHERE AD_Field_ID=
  (SELECT AD_Field_ID
     FROM AD_Field
    WHERE ad_column_id =
    (SELECT ad_column_id
       FROM ad_column
      WHERE columnname LIKE 'POReference'
    AND ad_table_id=
      (SELECT ad_table_id FROM ad_table WHERE tablename LIKE 'C_Invoice'
      )
    )
AND ad_tab_id =
  (SELECT ad_tab_id
     FROM ad_tab
    WHERE value LIKE 'Invoice_290')
  )AND AD_Language='fr_FR';