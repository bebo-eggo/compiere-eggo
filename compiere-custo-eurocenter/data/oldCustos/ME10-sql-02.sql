UPDATE AD_Field
SET seqno          = 95,
  MRSEQNO          = 95,
  issameline = 'Y'
WHERE ad_column_id =
  (SELECT ad_column_id
  FROM ad_column
  WHERE columnname = 'CopyLocationCuisine'
  AND ad_table_id IN
    (SELECT ad_table_id FROM ad_table WHERE tablename = 'C_BPartner_Location'
    )
  )
AND ad_tab_id IN
  (SELECT ad_tab_id
  FROM ad_tab
  WHERE value       = 'Location_222'
  AND ad_window_id IN
    (SELECT ad_window_id FROM ad_window WHERE value = 'Business Partner_123'
    )
  );