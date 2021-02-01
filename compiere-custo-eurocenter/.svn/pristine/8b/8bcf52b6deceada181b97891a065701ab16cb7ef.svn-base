ALTER TABLE C_BankStatementLine ADD Pay_SubPaymentRule_ID NUMBER(10);
ALTER TABLE C_BankStatementLine ADD CONSTRAINT FK393_1025011 FOREIGN KEY (Pay_SubPaymentRule_ID) REFERENCES ZSubPaymentRule (ZSubPaymentRule_ID);

UPDATE AD_Field
SET SeqNo = (SELECT SeqNo+2 FROM AD_Field WHERE Name='Payment' AND AD_Tab_ID = (SELECT AD_Tab_ID FROM AD_Tab WHERE Value='Cash Movements'))
WHERE AD_Column_ID = (SELECT AD_Column_ID FROM AD_Column WHERE ColumnName='Pay_SubPaymentRule_ID');

UPDATE AD_Field
SET  MrSeqNo = SeqNo, IsReadOnly='Y' 
WHERE AD_Column_ID = (SELECT AD_Column_ID FROM AD_Column WHERE ColumnName='Pay_SubPaymentRule_ID');

UPDATE C_BankStatementLine bsl
SET Pay_SubPaymentRule_ID = (SELECT ZSubPaymentRule_ID FROM C_Payment p WHERE p.C_Payment_ID=bsl.C_Payment_ID)
WHERE C_Payment_ID IS NOT NULL AND C_Payment_ID > 0;

UPDATE AD_Column SET ISALWAYSUPDATEABLE='Y', ENTITYTYPE='EC60' WHERE ColumnName='ZSubPaymentRule_ID' AND AD_Table_ID=(SELECT AD_Table_ID FROM AD_Table WHERE TableName='C_Payment');

UPDATE AD_Field
SET  MrSeqNo = SeqNo 
WHERE AD_Tab_ID IN (SELECT AD_Tab_ID FROM AD_Tab t INNER JOIN AD_Window w ON (w.AD_WindoW_ID=t.AD_Window_ID) WHERE w.Name='Correct Cash - Payment Method';

UPDATE AD_Field
SET SeqNo = (SELECT SeqNo+2 FROM AD_Field WHERE Name='Difference Caisse' AND AD_Tab_ID = (SELECT AD_Tab_ID FROM AD_Tab WHERE Name='Gestion de Caisse'))
WHERE Name = 'Cash Diff Global';

UPDATE AD_Field
SET  MrSeqNo = SeqNo, IsReadOnly='Y', IsSameLine='Y' 
WHERE Name = 'Cash Diff Global';

UPDATE AD_Table SET IsHighVolume='Y' WHERE TableName='C_Payment';