UPDATE AD_Column SET defaultvalue='@SQL=SELECT AD_Org_ID FROM Z_CheckDelivery WHERE Z_CheckDelivery_ID = @Z_CheckDelivery_ID@'
WHERE columnname ='AD_Org_ID' 
AND AD_Table_ID= (SELECT AD_Table_ID FROM AD_Table WHERE TableName='Z_CheckDeliveryLine');