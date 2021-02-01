--- Onglet Ligne de commande ++
UPDATE ad_tab
SET DISPLAYLOGIC =
  '(@AD_Client_ID@!1000000 & @C_DocTypeTarget_ID@!1000028 & @AD_Role_ID@!1000737 & @AD_Role_ID@!1001542) | (@AD_Client_ID@!1000000 & @C_DocTypeTarget_ID@!1005282 & @AD_Role_ID@!1000737 ) | (@AD_Client_ID@!1000000 & @C_DocTypeTarget_ID@!1002487 & @C_DocTypeTarget_ID@!1003616 & @C_DocTypeTarget_ID@!1005180 & @AD_Role_ID@!1000737 & @AD_Role_ID@!1000740 & @AD_Role_ID@!1001542 & @AD_Role_ID@!1001775 ) | (@AD_Client_ID@!1000024 & @C_DocTypeTarget_ID@!1004922 & @AD_Role_ID@!1001768 & @AD_Role_ID@!1001542) | (@AD_Client_ID@!1000024 & @C_DocTypeTarget_ID@!1005382 & @AD_Role_ID@!1001768 ) | (@AD_Client_ID@!1000024 & @C_DocTypeTarget_ID@!1005028 & @C_DocTypeTarget_ID@!1005382 & @C_DocTypeTarget_ID@!1006407 & @AD_Role_ID@!1000737 & @AD_Role_ID@!1000740 & @AD_Role_ID@ 1001542 & @AD_Role_ID@!1001775 ) | (@AD_Client_ID@!1000022 & @C_DocTypeTarget_ID@!1006386 & @AD_Role_ID@!1000836 & @AD_Role_ID@!1001542 ) | (@AD_Client_ID@!1000022 &  @C_DocTypeTarget_ID@!1002487 & @C_DocTypeTarget_ID@!1003616 & @AD_Role_ID@!1000737 & @AD_Role_ID@!1000740 & @AD_Role_ID@!1001542 & @AD_Role_ID@!1001775 )'
WHERE value = 'Order Line_plus_188';


---- Onglet Ligne de commande
UPDATE ad_tab
SET DISPLAYLOGIC = '(@AD_Client_ID@!1000000 & @C_DocTypeTarget_ID@!1000028 & @C_DocTypeTarget_ID@!1005282 & @AD_Role_ID@!1000740 & @AD_Role_ID@!1001775) | (@AD_Client_ID@!1000024 & @C_DocTypeTarget_ID@!1005382 & @C_DocTypeTarget_ID@!1004922 & @AD_Role_ID@!1000740 & @AD_Role_ID@!1001775) | (@AD_Client_ID@!1000022 & @C_DocTypeTarget_ID@!1006386 &  @AD_Role_ID@!1000740)'
WHERE value      = 'Order Line_187';


---- Onglet Interventions 
UPDATE ad_tab
SET READONLYLOGIC =
  '(@AD_Client_ID@=1000000 & (@C_DocTypeTarget_ID@=1000028 | @C_DocTypeTarget_ID@=1002487 | @C_DocTypeTarget_ID@=1003616 | @C_DocTypeTarget_ID@=1005180 | @C_DocTypeTarget_ID@=1005282 ) & (@AD_Role_ID@=1000737 | @AD_Role_ID@=1001542)) | (@AD_Client_ID@=1000024 & (@C_DocTypeTarget_ID@=1005028 | @C_DocTypeTarget_ID@=1005382 | @C_DocTypeTarget_ID@=1005280 | @C_DocTypeTarget_ID@=1004922 | @C_DocTypeTarget_ID@=1006407 ) & (@AD_Role_ID@=1001768 | @AD_Role_ID@=1001766)) | (@AD_Client_ID@=1000022 & (@C_DocTypeTarget_ID@=1006386 | @C_DocTypeTarget_ID@=1002487 ) & (@AD_Role_ID@=1001553 | @AD_Role_ID@=1000836))'
  WHERE value = 'Z_Interventions' ;


--Champ Paiements non remontés
UPDATE ad_field
SET DISPLAYLOGIC   = '(@AD_Client_ID@!1000000 & @C_DocTypeTarget_ID@!1000028 & @C_DocTypeTarget_ID@!1002487 & @C_DocTypeTarget_ID@!1003616 & @C_DocTypeTarget_ID@!1005180 & @C_DocTypeTarget_ID@!1005282 & @AD_Role_ID@!1000737 & @AD_Role_ID@!1000740 & @AD_Role_ID@!1001542)  | (@AD_Client_ID@!1000024 & @C_DocTypeTarget_ID@!1005028 & @C_DocTypeTarget_ID@!1005382 & @C_DocTypeTarget_ID@!1005280 & @C_DocTypeTarget_ID@!1004922 & @C_DocTypeTarget_ID@!1006407 & @AD_Role_ID@!1001768 & @AD_Role_ID@!1001767 & @AD_Role_ID@!1001766) | (@AD_Client_ID@!1000022 & @C_DocTypeTarget_ID@!1006386 & @C_DocTypeTarget_ID@!1002487 & @AD_Role_ID@!1000836 & @AD_Role_ID@!1001553 & @AD_Role_ID@!1002584 )'
WHERE AD_COLUMN_ID =
  (SELECT ad_column_id
  FROM ad_column
  WHERE columnname = 'Z_PayGI'
  AND ad_table_id  =
    (SELECT ad_table_id FROM ad_table WHERE tablename = 'C_Order'
    )
  )
AND ad_tab_id =
  (SELECT ad_tab_id FROM ad_tab WHERE value = 'Order_186 '
  ) ;

