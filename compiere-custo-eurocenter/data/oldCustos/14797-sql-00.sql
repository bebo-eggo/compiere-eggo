update c_docbasetype set accountingclassname = 'com.audaxis.compiere.acct.Doc_Order'
where docbasetype in ('SOO','POO');
update c_docbasetype set accountingclassname = 'com.audaxis.compiere.acct.Doc_InOut'
where docbasetype in ('MMR','MMS');
update c_docbasetype set accountingclassname = 'com.audaxis.compiere.acct.Doc_Invoice'
where docbasetype in ('ARI','API','ARC','APC','ARF');
update c_docbasetype set accountingclassname = 'com.audaxis.compiere.acct.Doc_Payment'
where docbasetype in ('APP','ARR');
update c_docbasetype set accountingclassname = 'com.audaxis.compiere.acct.Doc_Allocation'
where docbasetype in ('CMA');
update c_docbasetype set accountingclassname = 'com.audaxis.compiere.acct.Doc_Cash'
where docbasetype in ('CMC');
update c_docbasetype set accountingclassname = 'com.audaxis.compiere.acct.Doc_Bank'
where docbasetype in ('CMB');
update c_docbasetype set accountingclassname = 'com.audaxis.compiere.acct.Doc_Inventory'
where docbasetype in ('MMI');
update c_docbasetype set accountingclassname = 'com.audaxis.compiere.acct.Doc_Movement'
where docbasetype in ('MMM');
update c_docbasetype set accountingclassname = 'com.audaxis.compiere.acct.Doc_Production'
where docbasetype in ('MMP');
update c_docbasetype set accountingclassname = 'com.audaxis.compiere.acct.Doc_GLJournal'
where docbasetype in ('GLJ');
update c_docbasetype set accountingclassname = 'com.audaxis.compiere.acct.Doc_MatchInv'
where docbasetype in ('MXI');
update c_docbasetype set accountingclassname = 'com.audaxis.compiere.acct.Doc_MatchPO'
where docbasetype in ('MXP');
update c_docbasetype set accountingclassname = 'com.audaxis.compiere.acct.Doc_ProjectIssue'
where docbasetype in ('PJI');
update c_docbasetype set accountingclassname = 'com.audaxis.compiere.acct.Doc_Requisition'
where docbasetype in ('POR');