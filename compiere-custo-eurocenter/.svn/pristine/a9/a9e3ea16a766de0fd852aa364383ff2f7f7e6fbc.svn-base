update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'User2_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'RV_Fact_Acct'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'Account_ID - User2'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Refacturation', defaultvalue = '', defaultvalue2 = '', description = 'User defined list element #2', entitytype = 'Y174', fieldlength = 0, help = 'The user defined element displays the optional elements that have been defined for this account combination.', seqno = 55, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'N', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'User2_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'RV_Fact_Acct');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='User2_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_Fact_Acct')), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='User2_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_Fact_Acct')) and ad_language = 'nl_BE');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='User2_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_Fact_Acct')) and ad_language = 'nl_BE';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='User2_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_Fact_Acct')), 'fr_FR', 'Y', 'User defined list element #2','The user defined element displays the optional elements that have been defined for this account combination.','Refacturation'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='User2_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_Fact_Acct')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'User defined list element #2',Help = 'The user defined element displays the optional elements that have been defined for this account combination.',Name = 'Refacturation' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='User2_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_Fact_Acct')) and ad_language = 'fr_FR';

ALTER TABLE C_InvoiceLine ADD IsRefact CHAR(1) DEFAULT 'N' CHECK (IsRefact IN ('Y','N'));
ALTER TABLE C_InvoiceLine ADD IsMag CHAR(1) DEFAULT 'N' CHECK (IsMag IN ('Y','N'));
update AD_Val_Rule set Updated = sysdate, UpdatedBy = 0, code = 'AD_Org.AD_Org_ID <> 0 AND AD_Org.IsSummary =''N'' AND AD_Org.IsMag=''@IsMag@''' where Name = 'AD_Org Trx Security validation(ventilation)' ;