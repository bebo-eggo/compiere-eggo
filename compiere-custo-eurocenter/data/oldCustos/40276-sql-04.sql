UPDATE ad_column
SET ismandatory  = 'Y',
  ismandatoryui  ='Y',
  defaultvalue   = 'N'
WHERE ad_table_id = 318
AND ColumnName   ='Z_ApprovedInv';

UPDATE ad_column
SET ismandatory  = 'Y',
  ismandatoryui  ='Y',
  defaultvalue   = 'Y'
WHERE ad_table_id = 291
AND ColumnName   ='Z_ApprovedInv';