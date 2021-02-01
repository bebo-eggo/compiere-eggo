update AD_Column set iscallout = 'Y' where AD_Column_ID = 5221;
update ad_column set readonlylogic = '@C_Payment_ID@!'''' & @C_Payment_ID@!0' where ad_column_id in (5220,5221);