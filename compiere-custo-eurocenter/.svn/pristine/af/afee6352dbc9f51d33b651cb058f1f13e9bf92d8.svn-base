UPDATE AD_InfoColumn
SET SelectClause = 'currencyConvert((SELECT NVL(inv.escompte2,0) FROM C_Invoice inv WHERE inv.C_Invoice_ID=i.C_Invoice_ID),i.C_Currency_ID,  @C_Currency_ID@ ,i.DateInvoiced,i.C_ConversionType_ID,i.AD_Client_ID,i.AD_Org_ID)*i.Multiplier*i.MultiplierAP'
WHERE Name='Discount Amount'
AND AD_InfoWindow_ID = (SELECT AD_InfoWindow_ID FROM AD_InfoWindow WHERE Description='Unpaid Invoices - Used by Payment Allocation Form');