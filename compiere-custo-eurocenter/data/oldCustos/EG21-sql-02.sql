-- modification de la longueur de IdTradePlace de 22 a 60 car

alter table c_order add z_refchantier nvarchar2(30) default null;

ALTER TABLE C_BPartner MODIFY IdTradePlace NVARCHAR2(60) DEFAULT NULL;

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IdTradePlace'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_BPartner'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EG21', fieldlength = 60, help = '', name = 'IdTradePlace', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IdTradePlace'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner');