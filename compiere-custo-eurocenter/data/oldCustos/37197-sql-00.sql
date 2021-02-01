 UPDATE ad_process_para
SET columnname   ='OrderByType'
  WHERE name     ='OrderByType'
AND ad_process_id=
  (SELECT ad_process_id FROM ad_process WHERE value LIKE 'Y_BalanceXLS2'
  );