CREATE OR REPLACE FORCE VIEW "CONTRAT_SAV" ("AD_CLIENT_ID", "AD_ORG_ID", "CREATED", "CREATEDBY", "UPDATED", "UPDATEDBY", "ISACTIVE", "C_ORDER_ID", "ENF_ORDER_ID", "C_DOCTYPETARGET_ID", "C_BPARTNER_ID", "DATEORDERED") AS 
  SELECT
    o.ad_client_id,
    o.ad_org_id,
    o.created ,
    o.createdby,
    o.updated,
    o.updatedby,
    o.isactive,
    (
      SELECT
        MAX(c_order_id)
      FROM
        c_order
      WHERE
        poreference          = o.poreference
      AND c_doctypetarget_id in(Select C_DocType_ID from C_DocType where (upper(name) like upper('%store%') OR (upper(name)) like upper('%cuisine%') OR upper(name) like upper('%expo%') OR upper(name) like upper('%placard%')) and DOCSUBTYPESO = 'SO' and upper(name) not like upper('%SAV%')
    ))            AS par_order_id,
    o.c_order_id AS enf_order_id,
    o.c_doctypetarget_id,
    o.c_bpartner_id,
    o.dateordered
  FROM
    c_order o
  WHERE -- o.c_doctypetarget_id <> 1000028 and
    o.issotrx             = 'Y'
  AND o.poreference      IS NOT NULL
  AND exists ( SELECT
        1
      FROM
        c_doctype
      WHERE o.c_doctypetarget_id = c_doctype.c_doctype_id and 
        upper(name) LIKE '%SAV%'
    );
    
    
  CREATE OR REPLACE FORCE VIEW "CONTRAT_PO" ("AD_CLIENT_ID", "AD_ORG_ID", "PAR_ORDER_ID", "C_ORDER_ID", "C_DOCTYPETARGET_ID", "C_BPARTNER_ID") AS 
  SELECT o.ad_client_id,
    o.ad_org_id,
    (SELECT MAX(c_order_id)
    FROM c_order
    WHERE poreference      = o.poreference
    and c_doctypetarget_id in(Select C_DocType_ID from C_DocType where (upper(name) like upper('%store%') OR (upper(name)) like upper('%cuisine%')))
    )            AS par_order_id,
    o.c_order_id AS enf_order_id,
    o.c_doctypetarget_id,
    o.c_bpartner_id
  FROM c_order o
  WHERE -- o.c_doctypetarget_id <> 1000028 and
    o.issotrx                 = 'N'
  AND o.poreference          IS NOT NULL;

  CREATE OR REPLACE FORCE VIEW "CONTRAT_SO" ("AD_CLIENT_ID", "AD_ORG_ID", "PAR_ORDER_ID", "C_ORDER_ID", "C_DOCTYPETARGET_ID", "C_BPARTNER_ID") AS 
  SELECT o.ad_client_id,
    o.ad_org_id,
    (SELECT MAX(c_order_id)
    FROM c_order
    WHERE poreference      = o.poreference
    and c_doctypetarget_id in(Select C_DocType_ID from C_DocType where (upper(name) like upper('%store%') OR (upper(name)) like upper('%cuisine%')))
    )            AS par_order_id,
    o.c_order_id AS enf_order_id,
    o.c_doctypetarget_id,
    o.c_bpartner_id
  FROM c_order o
  WHERE -- o.c_doctypetarget_id <> 1000028 and
    o.issotrx                 = 'Y'
  AND o.poreference          IS NOT NULL
  AND c_doctypetarget_id NOT IN
    (select c_doctype_id from c_doctype where upper(name) like '%SAV%'
    );