ALTER TABLE M_InOutLine ADD IsReconciled CHAR(1) DEFAULT 'N' CHECK (IsReconciled IN ('Y','N')) NOT NULL;

  CREATE OR REPLACE FORCE VIEW "ZRV_RECEIPT_NOT_MATCHED" ("AD_CLIENT_ID", "CREATED", "CREATEDBY", "ISACTIVE", "UPDATED", "UPDATEDBY", "RECEPTION", "C_DOCTYPE_ID", "ARTICLE", "ARTICLE_FOURNISSEUR", "AD_ORG_ID", "DESCRIPTION", "DATEACCT", "QTYENTERED", "C_BPARTNER_ID", "DOCUMENTNO") AS 
  select 
m.AD_CLIENT_ID , m.CREATED , m.CREATEDBY , m.ISACTIVE , m.UPDATED , m.UPDATEDBY,
m.documentno as reception,
m.C_DOCTYPE_ID,
p.name as article,
p.value as article_fournisseur,
ml.AD_ORG_ID,
ml.DESCRIPTION,
m.DATEACCT,
ml.QTYENTERED,
m.C_BPARTNER_ID,
o.documentno

from  M_INOUT m
inner join M_INOUTLINE ml on  m.M_INOUT_ID = ml.M_INOUT_ID
inner join M_PRODUCT p on p.M_PRODUCT_ID=ml.M_PRODUCT_ID
left join C_ORDER o on o.C_ORDER_ID = m.C_ORDER_ID
where (ml.C_ORDERLINE_ID is null )
and m.issotrx = 'N'
and m.DOCSTATUS in ('CO','VO','RE','VO')
and m.ISACTIVE = 'Y'
and ml.ISACTIVE = 'Y'
and ml.IsReconciled = 'N'
order by m.documentno;
