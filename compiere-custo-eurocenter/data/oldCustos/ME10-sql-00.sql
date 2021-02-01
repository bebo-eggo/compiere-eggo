ALTER TABLE C_BPartner_Location MODIFY IsEggo CHAR(1) DEFAULT 'Y';
ALTER TABLE AD_User MODIFY IsEggo CHAR(1) DEFAULT 'Y';

UPDATE AD_Column SET DefaultValue ='Y' WHERE ColumnName ='IsEggo' AND AD_Table_ID  IN (293,114);

ALTER TABLE C_BPartner_Location ADD CopyLocationCuisine CHAR(1);

update ad_column 
set readonlylogic =
  CASE COALESCE (readonlylogic, N'1')
    WHEN N'1'
    THEN N'@IsEggo@=N'
    ELSE readonlylogic
      || ' | @IsEggo@=N'
  END
WHERE ad_table_id IN (293,114);