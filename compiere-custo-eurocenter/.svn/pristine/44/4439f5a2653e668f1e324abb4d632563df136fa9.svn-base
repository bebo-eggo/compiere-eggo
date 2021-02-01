ALTER TABLE AD_Org ADD AD_Intercompany_Acct NUMBER(10);
ALTER TABLE AD_Org ADD C_AcctSchema_ID NUMBER(10) DEFAULT NULL;

update ad_org set C_AcctSchema_ID=1000002;
update ad_org set AD_Intercompany_Acct = 1000261;
update ad_org set AD_Intercompany_Acct = 1000262 where value = '01';


ALTER TABLE AD_Org ADD CONSTRAINT FK155_1006674 FOREIGN KEY (AD_Intercompany_Acct) REFERENCES C_ValidCombination (C_ValidCombination_ID);
ALTER TABLE AD_Org ADD CONSTRAINT FK155_1006676 FOREIGN KEY (C_AcctSchema_ID) REFERENCES C_AcctSchema (C_AcctSchema_ID);

ALTER TABLE AD_Org MODIFY AD_Intercompany_Acct NOT NULL;
ALTER TABLE AD_Org MODIFY C_AcctSchema_ID NOT NULL;

update AD_Field
set seqno = 90
where AD_Tab_ID = (select AD_Tab_ID from AD_Tab 
                   where value = 'Organization_143' 
                   and AD_Window_ID = (select AD_Window_ID from AD_Window where value = 'Organization_110'))
and ad_column_id in (select ad_column_id from ad_column where columnname='IsValid');