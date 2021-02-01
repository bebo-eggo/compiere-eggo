update AD_InfoColumn set isDisplayed = 'N' where AD_InfoColumn_ID in (137,143);
update AD_InfoColumn set isDisplayed = 'Y' where AD_InfoColumn_ID in (289);
update AD_InfoColumn_Trl set Name = 'Vente' where AD_InfoColumn_ID = 140 and AD_Language = 'fr_FR';
update AD_InfoColumn_Trl set Name = 'Référence' where AD_InfoColumn_ID = 142 and AD_Language = 'fr_FR';
update AD_InfoColumn_Trl set Name = 'Commande' where AD_InfoColumn_ID = 289 and AD_Language = 'fr_FR';