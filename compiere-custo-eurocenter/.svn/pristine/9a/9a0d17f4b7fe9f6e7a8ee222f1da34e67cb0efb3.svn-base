update ad_column set defaultvalue='@SQL=SELECT AD_Window_ID FROM AD_Window WHERE Value LIKE ''Remise ChÃ¨que/Financement''' where columnname like 'TChequeFinancement_Zoom' and ad_table_id=(select ad_table_id from ad_table where tablename like 'C_BankStatement');
ALTER TABLE C_BankStatement MODIFY TChequeFinancement_Zoom CHAR(22) DEFAULT NULL;

update ad_field set defaultvalue='@#Date@', iscentrallymaintained='N' where 
ad_column_id=(select ad_column_id from ad_column where columnname like 'ZDateRemise' and 
ad_table_id =(select ad_table_id from ad_table where tablename like 'Z_CheckDelivery')) 
and ad_tab_id= (select ad_tab_id from ad_tab where value='Remise Chèque/Financement' );

update ad_field set defaultvalue='@SQL=SELECT C_DocType_ID FROM C_DocType WHERE C_DocType.DocBaseType IN (''REM'')', iscentrallymaintained='N' where
ad_column_id=(select ad_column_id from ad_column where columnname like 'C_DocType_ID' and 
ad_table_id =(select ad_table_id from ad_table where tablename like 'Z_CheckDelivery')) 
and ad_tab_id= (select ad_tab_id from ad_tab where value='Remise Chèque/Financement' );

ALTER TABLE Z_CheckDelivery MODIFY BankAccountRemise_ID NUMBER(10) DEFAULT NULL;
ALTER TABLE Z_CheckDelivery DROP CONSTRAINT FK1000288_1010990 0 ALTER TABLE Z_CheckDelivery ADD CONSTRAINT FK1000288_1010990 FOREIGN KEY (BankAccountRemise_ID) REFERENCES C_BankAccount (C_BankAccount_ID);

ALTER TABLE Z_CheckDelivery MODIFY SubPaymentRule_ID NUMBER(10) DEFAULT NULL;
ALTER TABLE Z_CheckDelivery DROP CONSTRAINT FK1000288_1010991 0 ALTER TABLE Z_CheckDelivery ADD CONSTRAINT FK1000288_1010991 FOREIGN KEY (SubPaymentRule_ID) REFERENCES ZSubPaymentRule (ZSubPaymentRule_ID);

update Z_CheckDelivery set subpaymentrule_id= zsubpaymentrule_id where subpaymentrule_id is null;
update Z_CheckDelivery set bankaccountremise_id= c_bankaccount_id where bankaccountremise_id is null;
