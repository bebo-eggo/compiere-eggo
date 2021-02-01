update AD_Column set columnname = 'ZCreateFromStatement' where columnname = 'CreateFrom' and ad_table_id = (select ad_table_id from ad_table where tablename='C_BankStatement');
update AD_Column set ad_element_id = (select ad_element_id from ad_element where columnname = 'ZCreateFromStatement')
where columnname = 'ZCreateFromStatement' and ad_table_id = (select ad_table_id from ad_table where tablename='C_BankStatement');
ALTER TABLE C_BankStatement ADD ZCreateFromStatement CHAR(1);
