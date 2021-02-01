update ad_val_rule set code ='decode (@#AD_Org_ID@,0, 0, C_BankAccount.AD_Org_ID) = decode(@#AD_Org_ID@,0, 0, @#AD_Org_ID@)
AND C_BankAccount.isactive = ''Y'' AND EXISTS
(SELECT 1 FROM c_bank WHERE c_bank.isactive =''Y'' AND c_bankaccount.c_bank_id=c_bank.c_bank_id )' 
where  name='C_BankAccount Org';