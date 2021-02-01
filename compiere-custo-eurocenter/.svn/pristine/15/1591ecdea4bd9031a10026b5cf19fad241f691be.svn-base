ALTER TABLE C_BPartner ADD IsBankTft CHAR(1) DEFAULT 'N' CHECK (IsBankTft IN ('Y','N')) NOT NULL;

insert into C_DOCBASETYPE (C_DOCBASETYPE_ID, AD_CLIENT_ID,AD_ORG_ID,AD_TABLE_ID,DOCBASETYPE,ENTITYTYPE,NAME)
select AD_Sequence_NextNo('C_DocBaseType'), 0,	0, (select AD_TABLE_ID from AD_TABLE where tablename = 'Z_BankTransfert'), 'BTR', 'W742', 'Transfert Banque'
from dual
where not EXISTS (select 1 from C_DOCBASETYPE where DOCBASETYPE = 'BTR');

update C_DOCBASETYPE
set ACCOUNTINGCLASSNAME = null
where DOCBASETYPE = 'BTR';

update AD_Workflow wf
set wf.AD_WF_Node_ID = (select AD_WF_Node_ID wfn from AD_WF_Node wfn where wfn.value = '(Start)' and wfn.AD_Workflow_ID=wf.AD_Workflow_ID)
where wf.value = 'Process_BankTransfert';

update ad_process set ad_workflow_id = (SELECT ad_workflow_id FROM ad_workflow WHERE value ='Process_BankTransfert') 
where value ='Z_BankTransfert_Process';