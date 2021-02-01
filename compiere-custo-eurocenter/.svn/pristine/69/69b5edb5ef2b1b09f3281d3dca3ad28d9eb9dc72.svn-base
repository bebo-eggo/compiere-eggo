UPDATE AD_Column SET columnsql = '(SELECT l.PriceStd FROM  RV_PRODUCT_PRICE l WHERE l.m_product_id = z_producttax.M_Product_ID AND rownum = 1)'
WHERE columnname = 'PriceStd'
AND ad_table_id = (SELECT AD_Table_ID FROM Ad_Table Where TableName = 'Z_ProductTax');