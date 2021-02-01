Update  ad_field f set displaylogic='1=2'  where ad_column_id=(select ad_column_id from ad_column where columnname like 'AD_OrgTrx_ID' and ad_table_id=(select ad_table_id from ad_table where tablename like 'C_Invoice')) and ad_tab_id=(select ad_tab_id from ad_tab where value like 'Invoice_290');
Update  ad_field f set displaylogic='1=2' where ad_column_id=(select ad_column_id from ad_column where columnname like 'C_Campaign_ID' and ad_table_id=(select ad_table_id from ad_table where tablename like 'C_Invoice')) and ad_tab_id=(select ad_tab_id from ad_tab where value like 'Invoice_290');
Update ad_field f SET NAME ='Refacturation' where ad_column_id=(select ad_column_id from ad_column where columnname like 'User2_ID' and ad_table_id=(select ad_table_id from ad_table where tablename like 'C_Invoice')) and ad_tab_id=(select ad_tab_id from ad_tab where value like 'Invoice_290');
Update  AD_Field_Trl SET NAME='Refacturation' where ad_field_id=(select ad_field_id from ad_field f ad_column_id=(select ad_column_id from ad_column where columnname like 'User2_ID' and ad_table_id=(select ad_table_id from ad_table where tablename like 'C_Invoice')) and ad_tab_id=(select ad_tab_id from ad_tab where value like 'Invoice_290') );
-- ligne de facture maintenace fournisseur
update  ad_field f  set displaylogic='1=2' where ad_column_id=(select ad_column_id from ad_column where columnname like 'AD_OrgTrx_ID' and ad_table_id=(select ad_table_id from ad_table where tablename like 'C_InvoiceLine')) and ad_tab_id=(select ad_tab_id from ad_tab where value like 'Invoice Line_291');
update  ad_field f set displaylogic='1=2' where ad_column_id=(select ad_column_id from ad_column where columnname like 'C_Campaign_ID' and ad_table_id=(select ad_table_id from ad_table where tablename like 'C_InvoiceLine')) and ad_tab_id=(select ad_tab_id from ad_tab where value like 'Invoice Line_291');
Update ad_field f SET f.iscentrallymaintained ='N' where ad_column_id=(select ad_column_id from ad_column where columnname like 'User2_ID' and ad_table_id=(select ad_table_id from ad_table where tablename like 'C_InvoiceLine')) and ad_tab_id=(select ad_tab_id from ad_tab where value like 'Invoice Line_291');
Update ad_field f SET NAME ='Refacturation' , displaylogic='@$Element_U2@=''Y/'' AND @IsMag@=''N'' and @IsRefact@=''Y'''  where ad_column_id=(select ad_column_id from ad_column where columnname like 'User2_ID' and ad_table_id=(select ad_table_id from ad_table where tablename like 'C_InvoiceLine')) and ad_tab_id=(select ad_tab_id from ad_tab where value like 'Invoice Line_291');
Update  AD_Field_Trl SET NAME='Refacturation' where ad_field_id=(select ad_field_id from ad_field where  ad_column_id=(select ad_column_id from ad_column where columnname like 'User2_ID' and ad_table_id=(select ad_table_id from ad_table where tablename like 'C_InvoiceLine')) and ad_tab_id=(select ad_tab_id from ad_tab where value like 'Invoice Line_291') );

--
update ad_column set ad_val_rule_id=(select ad_val_Rule_id from ad_val_rule where name like 'AD_Org Trx Security validation(ventilation)') WHERE columnname like 'AD_Org_ID' and
ad_table_id=(select ad_table_id from ad_table where tablename like 'C_InvoiceLine');
update ad_column set mandatorylogic='@$Element_U2@=''Y''  & @IsMag@=''N'' & @IsRefact@=''Y''' WHERE columnname like 'User2_ID' and ad_table_id=(select ad_table_id from ad_table where tablename like 'C_InvoiceLine');
ALTER TABLE C_InvoiceLine MODIFY User2_ID NUMBER(10) DEFAULT NULL
update ad_column set mandatorylogic='@IsRefact@=''Y''' WHERE columnname like 'User2_ID' and ad_table_id=(select ad_table_id from ad_table where tablename like 'C_InvoiceLine');
update ad_column set callout='org.compiere.model.CalloutInvoice.org',iscallout='Y' WHERE columnname like 'AD_Org_ID' and
ad_table_id=(select ad_table_id from ad_table where tablename like 'C_InvoiceLine');
ALTER TABLE C_InvoiceLine MODIFY User2_ID NUMBER(10) DEFAULT NULL;
