update ad_val_rule set code='NOT EXISTS(SELECT 1 FROM C_BankAccountDoc WHERE C_BankAccountDoc.C_BankAccount_ID  = @C_BankAccount_ID@ AND ZSubPaymentRule_id                  IS NOT NULL ) OR ZSubPaymentRule.ZSubPaymentRule_ID IN (SELECT C_BankAccountDoc.ZSubPaymentRule_ID FROM C_Bankaccountdoc
WHERE C_Bankaccountdoc.C_Bankaccount_Id = @C_BankAccount_ID@
AND( (C_BankAccountDoc.C_DocType_ID    IN
  (SELECT C_DocType_ID
  FROM C_DocType
  WHERE C_DocType.DocBaseType IN (''ARR'', ''APP'')
  AND C_DocType.c_doctype_id  IN
    (SELECT doc.c_doctype_id
    FROM C_BankAccountDoc doc
    WHERE doc.C_BankAccount_ID = @C_BankAccount_ID@
    )
  )
And @C_DocType_ID|0@ =0)
Or (@C_DocType_ID|0@!=0
AND C_BankAccountDoc.C_DocType_ID = @C_DocType_ID|0@ ))
) ' where Name='ZSubPaymentRuleOfBank';