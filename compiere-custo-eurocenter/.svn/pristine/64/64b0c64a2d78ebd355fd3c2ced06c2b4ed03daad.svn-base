UPDATE AD_Val_rule set CODE = '(C_Order.DocStatus IN (''CO'',''CL'')  or (( C_Order.DocStatus = ''IP'') 
and C_Order.C_DocTypeTarget_ID in (select C_doctype_id from c_doctypeinfo where IsStore = ''Y'')))  AND C_Order.IsReturnTrx=''N''' 
where AD_VAL_RULE_ID = 280;