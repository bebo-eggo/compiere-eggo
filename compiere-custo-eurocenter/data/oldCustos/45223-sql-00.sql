ALTER TABLE AD_Org DROP COLUMN IsTaxTransf;
ALTER TABLE C_Tax DROP COLUMN IsTaxTransf;

DELETE AD_Field_Trl
WHERE AD_Field_ID IN
  (SELECT AD_Field_ID
  FROM AD_Field
  WHERE ad_column_id IN
    (SELECT ad_column_id FROM AD_Column WHERE ColumnName='IsTaxTransf')
  );
  
  
DELETE AD_Field
WHERE ad_column_id IN
(SELECT ad_column_id FROM AD_Column WHERE ColumnName='IsTaxTransf'
);

DELETE AD_Column WHERE ColumnName='IsTaxTransf';

UPDATE AD_Val_Rule 
SET Code = 'C_Tax.SOPOType IN (''B'' ,  ( CASE WHEN (''@IsSOTrx@'' =''Y'' ) THEN   ''S''  ELSE ''P'' END) ) AND ((''@IsSOTrx@'' =''N'' AND (C_Tax.IsCocontractant=''@IsCocontractant@'' OR ''@IsCocontractant@''=NULL))'
WHERE Name = 'C_Tax(SO/PO Type) - Cocontractant | IsTaxTransf';