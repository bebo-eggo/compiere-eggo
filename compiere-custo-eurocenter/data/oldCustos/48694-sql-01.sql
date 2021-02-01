UPDATE AD_INFOWINDOW SET FROMCLAUSE = 
' C_Payment_V p  INNER JOIN C_Payment p2 ON (p.C_Payment_ID=p2.C_Payment_ID) 
 INNER JOIN C_Currency c ON (p.C_Currency_ID=c.C_Currency_ID AND p.Processed=''Y''  AND p.C_Charge_ID IS NULL) '
WHERE AD_INFOWINDOW_ID=109;

UPDATE AD_INFOWINDOW SET FROMCLAUSE =  'C_Invoice_v i 
  INNER JOIN C_Currency c ON ( i.c_Currency_ID = c.C_Currency_ID AND i.Processed = ''Y'' )' 
WHERE AD_INFOWINDOW_ID=111;
