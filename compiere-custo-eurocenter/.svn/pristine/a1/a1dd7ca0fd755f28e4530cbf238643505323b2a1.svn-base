UPDATE AD_Val_Rule SET Code = 'AD_Org.AD_Org_ID <> 0 AND AD_Org.IsSummary =''N''  
AND EXISTS(
(SELECT 1 FROM AD_Org org WHERE IsMag= (CASE WHEN ''@IsMag@'' = ''Y'' THEN ''Y'' END) AND AD_Org.AD_Org_ID= org.AD_Org_ID)
UNION 
(SELECT 1 FROM AD_Org org WHERE IsMag <> (CASE WHEN ''@IsMag@'' = ''N'' THEN ''O'' END) AND AD_Org.AD_Org_ID= org.AD_Org_ID)
)'
WHERE Name = 'AD_Org Trx Security validation(ventilation)';

UPDATE AD_Field SET displaylogic = '@$Element_U2@=''Y'' & @IsRefact@=''Y''' WHERE AD_Field_ID = 13675;
UPDATE AD_Column SET mandatorylogic = '@$Element_U2@=''Y'' & @IsRefact@=''Y''' WHERE AD_Column_ID=15854;
UPDATE AD_Column
SET IsCallout   ='Y'
WHERE ColumnName IN ('AD_Client_ID','AD_Org_ID')
AND AD_Table_ID =(SELECT AD_Table_ID FROM AD_Table WHERE TableName ='C_InvoiceLine');