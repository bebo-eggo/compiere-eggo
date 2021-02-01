update ad_table set isdownsynchronized = 'Y', syncsequence = 10 where tablename = 'AD_Client';
update ad_table set isdownsynchronized = 'Y', syncsequence = 15 where tablename = 'AD_Org';
update ad_table set isdownsynchronized = 'Y', syncsequence = 35 where tablename = 'C_Currency';
update ad_table set isdownsynchronized = 'Y', syncsequence = 40 where tablename = 'C_Country';
update ad_table set isdownsynchronized = 'Y', syncsequence = 42 where tablename = 'C_Tax';
update ad_table set isdownsynchronized = 'Y', syncsequence = 45 where tablename = 'M_PriceList';
update ad_table set isdownsynchronized = 'Y', syncsequence = 50 where tablename = 'C_BP_Group';
update ad_table set isdownsynchronized = 'Y', syncsequence = 50 where tablename = 'C_Greeting';
update ad_table set isdownsynchronized = 'Y', syncsequence = 50 where tablename = 'C_City';
update ad_table set isdownsynchronized = 'Y', syncsequence = 55 where tablename = 'C_Location';
update ad_table set isdownsynchronized = 'Y', syncsequence = 55 where tablename = 'C_BPartner';
update ad_table set isdownsynchronized = 'Y', syncsequence = 60 where tablename = 'C_BPartner_Location';
update ad_table set isdownsynchronized = 'Y', syncsequence = 60 where tablename = 'M_Product_Category';
update ad_table set isdownsynchronized = 'Y', syncsequence = 63 where tablename = 'AD_User';
update ad_table set isdownsynchronized = 'Y', syncsequence = 106 where tablename = 'M_Product';
update ad_table set isdownsynchronized = 'Y', syncsequence = 70 where tablename = 'R_MailText';
update ad_table set isdownsynchronized = 'Y', syncsequence = 103 where tablename = 'M_AttributeSet';
update ad_table set isdownsynchronized = 'Y', syncsequence = 86 where tablename = 'C_Bank';
update ad_table set isdownsynchronized = 'Y', syncsequence = 87 where tablename = 'C_BankAccount';
update ad_table set isdownsynchronized = 'Y', syncsequence = 75 where tablename = 'AD_Sequence';
update ad_table set isdownsynchronized = 'Y', syncsequence = 80 where tablename = 'M_PriceList_Version';
update ad_table set isdownsynchronized = 'Y', syncsequence = 85 where tablename = 'C_DocType';
update ad_table set isdownsynchronized = 'Y', syncsequence = 105 where tablename = 'M_AttributeSetInstance';
update ad_table set isdownsynchronized = 'Y', syncsequence = 110 where tablename = 'M_BOM';
update ad_table set isdownsynchronized = 'Y', syncsequence = 120 where tablename = 'AD_Reference';
update ad_table set isdownsynchronized = 'Y', syncsequence = 130 where tablename = 'AD_Message';
update ad_table set isdownsynchronized = 'Y', syncsequence = 130 where tablename = 'C_Cash';
update ad_table set isdownsynchronized = 'Y', syncsequence = 100 where tablename = 'M_Attribute';
update ad_table set isdownsynchronized = 'Y', syncsequence = 140 where tablename = 'M_AttributeValue';
update ad_table set isdownsynchronized = 'Y', syncsequence = 140 where tablename = 'M_BOMProduct';
update ad_table set isdownsynchronized = 'Y', syncsequence = 140 where tablename = 'AD_Ref_List';
update ad_table set isdownsynchronized = 'Y', syncsequence = 145 where tablename = 'M_AttributeInstance';
update ad_table set isdownsynchronized = 'Y', syncsequence = 145 where tablename = 'M_ProductPrice';
update ad_table set isdownsynchronized = 'Y', syncsequence = 145 where tablename = 'AD_OrgInfo';
update ad_table set isdownsynchronized = 'Y', syncsequence = 145 where tablename = 'AD_ClientInfo';
update ad_table set isdownsynchronized = 'Y', syncsequence = 145 where tablename = 'M_Substitute';
update ad_table set isdownsynchronized = 'Y', syncsequence = 145 where tablename = 'M_Product_PO';
update ad_table set isdownsynchronized = 'Y', syncsequence = 145 where tablename = 'AD_Ref_List_Trl';
update ad_table set isdownsynchronized = 'Y', syncsequence = 145 where tablename = 'M_Cost';
update ad_table set isdownsynchronized = 'Y', syncsequence = 145 where tablename = 'C_Country_Trl';
update ad_table set isdownsynchronized = 'Y', syncsequence = 145 where tablename = 'AD_Message_Trl';
update ad_table set isdownsynchronized = 'Y', syncsequence = 145 where tablename = 'C_BankAccountDoc';
update ad_table set isdownsynchronized = 'Y', syncsequence = 145 where tablename = 'M_RelatedProduct';
update ad_table set isdownsynchronized = 'Y', syncsequence = 145 where tablename = 'M_AttributeUse';
update ad_table set isdownsynchronized = 'Y', syncsequence = 150 where tablename = 'Z_PosPaymentRule';
update ad_table set isdownsynchronized = 'Y', syncsequence = 155 where tablename = 'ZSubPaymentRule';
update ad_table set isdownsynchronized = 'Y', syncsequence = 62 where tablename = 'Z_S_Famille';
update ad_table set isdownsynchronized = 'Y', syncsequence = 63 where tablename = 'Z_S_S_Famille';
update ad_table set isdownsynchronized = 'Y', syncsequence = 64 where tablename = 'Z_S_S_S_Famille';
update ad_table set isdownsynchronized = 'Y', syncsequence = 175 where tablename = 'Z_PosWfAction';
update ad_table set isdownsynchronized = 'Y', syncsequence = 62 where tablename = 'Y_Marque';
update ad_table set isdownsynchronized = 'Y', syncsequence = 107 where tablename = 'Z_ProductTax';
update ad_table set isdownsynchronized = 'Y', syncsequence = 175 where tablename = 'Z_SavStatus';
update ad_table set isdownsynchronized = 'Y', syncsequence = 63 where tablename = 'Z_Taxdoctype';
update ad_table set isdownsynchronized = 'Y', syncsequence = 175 where tablename = 'C_BankStatement';

create or replace FUNCTION GETTABLESTOSYNC
RETURN NVARCHAR2
AS
	v_string		NVARCHAR2(10000);
  v_schema		NVARCHAR2(50);
  cpt         NUMBER :=0;
    --
	CURSOR	Cur_Table	IS select tablename from ad_table where isdownsynchronized='Y' order by tablename;
    --
BEGIN
  BEGIN
    select user 
    INTO v_schema
    from dual;
  END;
  
	FOR a IN Cur_Table LOOP
    IF cpt = 0 THEN
       v_string :=concat(concat(v_schema,'.'),a.tableName);
    ELSE
      v_string := concat(concat(v_string,','),concat(concat(v_schema,'.'),a.tableName));
    END IF;
    cpt := cpt+1;
	END LOOP;
  
	RETURN	v_string;
END GETTABLESTOSYNC;
/