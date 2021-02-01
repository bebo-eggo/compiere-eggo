
  CREATE OR REPLACE FORCE VIEW "Z_JOURNAL" ("AD_CLIENT_ID", "AD_ORG_ID", "ISACTIVE", "CREATED", "CREATEDBY", "UPDATED", "UPDATEDBY", "GL_CATEGORY_ID", "C_PERIOD_ID", "DESCRIPTION", "C_ELEMENTVALUE_ID", "DATEACCT", "C_BPARTNER_ID", "C_CURRENCY_ID", "AMTACCTDR", "AMTACCTCR", "AMTSOURCEDR", "AMTSOURCECR", "TAX_NAME", "USER1_ID", "USER2_ID", "TABLENAME", "DOCUMENTNO", "C_ACCTSCHEMA_ID", "POSTINGTYPE", "ZFACT_ACCT_ID") AS 
  SELECT fa.AD_CLIENT_ID, fa.AD_ORG_ID, 'Y' AS ISACTIVE, SysDate AS CREATED, 0 AS CREATEDBY, SysDate AS UPDATED, 0 AS UPDATEDBY, fa.gl_category_id,
  fa.c_period_id, fa.description, fa.account_id, fa.dateacct, /* Missing : Supplier Code */
  fa.c_bpartner_id, fa.c_currency_id, fa.amtacctdr, fa.amtacctcr, fa.amtsourcedr, fa.amtsourcecr,
  (select name from C_Tax where c_tax_id = fa.c_tax_id), fa.User1_ID, fa.User2_ID,
  (select t.tablename from ad_table t where t.ad_table_id = fa.ad_table_id),
  DECODE( (select t.tablename from ad_table t where t.ad_table_id = fa.ad_table_id) ,
  'C_Invoice',(select i.documentno from c_invoice i where i.c_invoice_id = fa.record_id),
  'C_Payment',(select p.documentno from c_payment p where p.c_payment_id = fa.record_id),
  'M_InOut',(select io.documentno from m_inout io where io.m_inout_id = fa.record_id),
-- 07 AVR 2006 Ceci casse le Journal des OD 'GL_Journal',fa.fact_acct_id,
  'GL_Journal',(select gl.documentno from gl_journal gl where gl.gl_journal_id = fa.record_id),
  'M_Inventory',fa.record_id,
  'M_Movement',fa.record_id,
  'M_Production',fa.record_id,
  'C_AllocationHdr',(select i.documentno from c_allocationhdr i where i.c_allocationhdr_id = fa.record_id),
  'C_BankStatement',(select bs.name from c_bankstatement bs where bs.c_bankstatement_id = fa.record_id),
  'M_MatchInv',fa.record_id,
  'M_MatchPO',fa.record_id ),
  fa.C_AcctSchema_ID,
  fa.postingtype,
  fa.fact_acct_id  -- zcom167  Ajout de Tablename, du docno  acctschemaID
 FROM FACT_ACCT fa;
