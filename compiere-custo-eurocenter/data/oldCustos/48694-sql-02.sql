UPDATE AD_InfoColumn SET SelectClause=
'CASE (SELECT COUNT(*) FROM C_AllocationLine WHERE C_Invoice_ID=i.C_Invoice_ID) WHEN 0 THEN (currencyConvert(
(SELECT NVL(inv.escompte2,0)
FROM C_Invoice inv
WHERE inv.C_Invoice_ID=i.C_Invoice_ID
),i.C_Currency_ID, @C_Currency_ID@ ,i.DateInvoiced,i.C_ConversionType_ID,i.AD_Client_ID,i.AD_Org_ID)*i.Multiplier*i.MultiplierAP)
ELSE 0 END'
WHERE AD_Element_ID = (SELECT AD_Element_ID FROM AD_Element WHERE ColumnName='DiscountAmt')
AND AD_InfoWindow_ID =111;