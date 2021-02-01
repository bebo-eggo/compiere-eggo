
  CREATE OR REPLACE FORCE VIEW "ZRV_UNPAID" ("AD_CLIENT_ID", "AD_ORG_ID", "ISACTIVE", "CREATED", "CREATEDBY", "UPDATED", "UPDATEDBY", "ORG_NAME", "DOCUMENTNO", "PARTNER", "PARTNER_KEY", "DATEORDERED", "TOTALTTC", "PAYE", "SOLDE", "TOTALQTYORDERED", "TOTALQTYDELIVERED", "MONTANT_ECHEANCE", "POREFERENCE", "Z_ORDERSTATUS", "Z_DATELIVRCLI", "PROM_BPARTNER_ID", "Z_REFCHANTIER", "Z_SOLDEGI", "Z_PAYGI", "SALESREP_ID", "PROM_EXTCODE", "XX_GESTIONNAIRE","C_BP_GROUP_ID") AS 
  WITH table_solde AS
  (SELECT
    --pour solde vente store/vente expo
    CASE
      WHEN o.c_doctypetarget_id  in (1000028,1004922,1005282,1004141,1005180,1001673,1005027,1003821,1005029,1001462,1005382,1005022,1005028,1005280,1007598,1002487,1003616,1005028,1007598)
      THEN
        (SELECT co.GrandTotal-NVL(co.TotalPaySched,0)-NVL(CO.Z_SOLDEGI,0) -NVL(co.Z_PayGI,0)
        FROM C_Order co
        WHERE co.C_Order_ID=o.C_Order_ID
        )
        --pour solde vente directe
      WHEN o.c_doctypetarget_id = 1001462
      THEN
        (SELECT (o.grandtotal - NVL(
          (SELECT SUM(i.payamt) FROM c_payment i WHERE i.c_order_id = oo.c_order_id
          ),0)-NVL(oo.Z_SOLDEGI,0) -NVL(oo.Z_PayGI,0))
        FROM c_order oo
        WHERE o.c_order_id=oo.c_order_id
        )
    END AS SOLDE,
    --pour payé vente store/vente expo
    CASE
      WHEN o.c_doctypetarget_id  in (1000028,1004922,1005282,1004141,1005180,1001673,1005027,1003821,1005029,1001462,1005382,1005022,1005028,1005280,1007598,1002487,1003616,1005028,1007598)
      THEN o.TOTALPAYSCHED+NVL(o.Z_PayGI,0)
        --pour payé vente directe
      WHEN o.c_doctypetarget_id = 1001462
      THEN
        (SELECT SUM(z.payamt)
        FROM Z_OrderVDPayment z
        WHERE z.C_Payment_ID > 0
        AND z.C_Order_ID     = o.c_order_id
        )
    END AS PAYE,
    (SELECT SUM(zop.TotalAmt)
    FROM z_orderpaymschedule zop
    INNER JOIN z_typeecheance ztech
    ON (ztech.z_typeecheance_id = zop.z_typeecheance_id
    AND ztech.isfinancement     ='Y')
    WHERE zop.C_Order_ID        =o.C_Order_ID
    ) AS montant_echeance,
    o.ad_client_id,
    o.ad_org_id AS ad_org_id,
    o.c_doctypetarget_id,
    o.isactive    AS isactive,
    o.created     AS created,
    o.createdby   AS createdby,
    o.updated     AS updated,
    o.updatedby   AS updatedby,
    o.grandtotal  AS TOTALTTC,
    o.poreference AS POREFERENCE,
    o.documentno,
    o.dateordered,
    o.c_bpartner_id AS c_bpartner_id,
    o.Z_SOLDEGI,
    qty.*,
    ZRV_STATUS.name as Z_ORDERSTATUS,
    o.Z_DATELIVRCLI, o.PROM_BPARTNER_ID, o.Z_REFCHANTIER, o.Z_PayGI, o.SalesRep_ID ,o.PROM_ExtCode,o.XX_GESTIONNAIRE, o.C_BP_GROUP_ID
  FROM c_order o
  INNER JOIN
    (SELECT ord.c_order_id,
      SUM(ol.qtyordered)                        AS totalqtyordered,
      SUM(ol.qtydelivered)                      AS totalqtydelivered,
      SUM(ol.qtyordered) - SUM(ol.qtydelivered) AS soldeqtydelivered
    FROM c_order ord
    INNER JOIN c_orderline ol     ON ol.c_order_id   = ord.c_order_id
   
    AND ol.isactive    = 'Y'
    WHERE ord.isactive = 'Y'
    GROUP BY ord.c_order_id
    )qty ON qty.c_order_id      = o.c_order_id
    
    left JOIN ZRV_STATUS on o.Z_ORDERSTEPSTATUS = ZRV_STATUS.Z_ORDERSTATUS
  WHERE o.DocStatus NOT        IN ('DR','RE','VO')
  AND o.isactive                = 'Y'
  AND o.issotrx                 ='Y'
  AND o.c_doctypetarget_id NOT IN(1001674,1005097)
  AND o.AD_CLIENT_ID            in ( 1000000 , 1000024)

  )
 
SELECT t_solde.ad_client_id,
  t_solde.ad_org_id AS ad_org_id,
  t_solde.isactive  AS isactive,
  t_solde.created   AS created,
  t_solde.createdby AS createdby,
  t_solde.updated   AS updated,
  t_solde.updatedby AS updatedby,
  org.name          AS org_name,
  t_solde.documentno,
  bp.name  AS partner,
  bp.value AS partner_key,
  t_solde.dateordered,
  t_solde.TOTALTTC,
  NVL(t_solde.Z_SOLDEGI,0)+ NVL( t_solde.PAYE,0) AS PAYE,
  NVL(t_solde.SOLDE,0)                           AS SOLDE,
  t_solde.totalqtyordered,
  t_solde.totalqtydelivered,
  NVL(t_solde.montant_echeance,0) AS montant_echeance,
  t_solde.POREFERENCE, 
   t_solde.Z_ORDERSTATUS as Z_ORDERSTATUS,
   t_solde.Z_DATELIVRCLI,t_solde.PROM_BPARTNER_ID, t_solde.Z_REFCHANTIER, t_solde.Z_SOLDEGI, t_solde.Z_PayGI, t_solde.SalesRep_ID,t_solde.PROM_ExtCode,t_solde.XX_GESTIONNAIRE, t_solde.C_BP_GROUP_ID
FROM table_solde t_solde 
INNER JOIN c_bpartner bp ON bp.c_bpartner_id = t_solde.c_bpartner_id
INNER JOIN ad_org org ON org.ad_org_id   = t_solde.ad_org_id

WHERE t_solde.SOLDE<>0 
ORDER BY t_solde.ad_org_id,
  t_solde.documentno;
/

  CREATE OR REPLACE FORCE VIEW "ZRV_UNPAID_EU" ("AD_CLIENT_ID", "AD_ORG_ID", "ISACTIVE", "CREATED", "CREATEDBY", "UPDATED", "UPDATEDBY", "ORGANISATION", "POREFERENCE", "DOCUMENTNO", "DATEORDERED", "C_BPARTNER_NAME", "PARTNER_KEY", "PHONE", "TOTALTTC", "PAYE", "SOLDE", "C_ORDER_ID", "TOTALQTYORDERED", "SOLDEQDELIVERED", "SOLDEQTYTODELIVERED", "LIVRED", "SOLDEQDELIVEREDX", "VENDOR", "TYPE_DOCUMENT", "C_DOCTYPETARGET_ID", "Z_DATELIVRCLI", "PROM_BPARTNER_ID", "Z_REFCHANTIER", "Z_PAYGI", "Z_SOLDEGI", "SALESREP_ID", "PROM_EXTCODE", "XX_GESTIONNAIRE","C_BP_GROUP_ID") AS 
  WITH table_solde AS
(SELECT o.ad_client_id,
    o.POREFERENCE,
    o.ad_org_id AS ad_org_id,
    o.isactive  AS isactive,
    o.created   AS created,
    o.createdby AS createdby,
    o.updated   AS updated,
    o.updatedby AS updatedby,
    org.name    AS Organisation,
    o.DOCUMENTNO,
    o.DATEORDERED as DATEORDERED,
    
     nvl(c_bpartner.name,' ') ||' '|| nvl(c_bpartner.name2,' ')   AS C_BPARTNER_NAME,
     c_bpartner.value AS PARTNER_KEY,
     nvl(coalesce(au.phone,au.phone2),' ')         as PHONE,
    o.GRANDTOTAL AS TOTALTTC,(CASE WHEN cdi.ISEGGO ='Y' then o.TotalPaySched+NVL(o.Z_PAYGI,0) else
    Round((NVL(
    (SELECT SUM(p.payamt) FROM c_payment p WHERE p.c_order_id = o.c_order_id and p.DocStatus      IN ('CO','CL')
    ) ,0))-NVL( (SELECT SUM(NVL(ol.qtyentered *ol.priceentered,0))
    FROM C_ORDERLINE ol
    WHERE ol.C_ORDER_id = o.C_ORDER_id and ol.M_Product_ID in (1133771,1136550)
    ),0),2)  + NVL(o.Z_PAYGI,0) end ) AS paye,

    (SELECT (o.grandtotal - NVL(
      (CASE WHEN cdi.ISEGGO ='Y' then o.TotalPaySched+NVL(o.Z_PAYGI,0) else
    Round((NVL(
    (SELECT SUM(p.payamt) FROM c_payment p WHERE p.c_order_id = o.c_order_id and p.DocStatus      IN ('CO','CL')
    ) ,0))-NVL( (SELECT SUM(NVL(ol.qtyentered *ol.priceentered,0))
    FROM C_ORDERLINE ol
    WHERE ol.C_ORDER_id = o.C_ORDER_id and ol.M_Product_ID in (1133771,1136550)
    ),0),2)  + o.Z_PAYGI end ),0) )
    FROM c_order o2
    WHERE o2.c_order_id=o.c_order_id
    ) as solde,
    
    qty.*,
    salesRep.NAME AS VENDOR,
    doctype.printname as type_document,
    o.c_doctypetarget_id,
    o.Z_DATELIVRCLI,
    o.PROM_BPARTNER_ID,o.Z_REFCHANTIER, o.Z_PAYGI, o.Z_SOLDEGI, o.SALESREP_ID,o.PROM_EXTCODE,o.XX_GESTIONNAIRE, o.C_BP_GROUP_ID
  FROM c_order o
  INNER JOIN
    (SELECT ord.c_order_id,
      SUM(NVL(ol.qtyordered,0))                                                AS totalqtyordered,
      SUM(NVL(ol.qtyDelivered,0))                                              AS soldeqdelivered ,
      (SUM(ol.qtyordered)  - SUM(ol.qtyDelivered))                             AS soldeqtytodelivered,
      SUM ((NVL(ol.qtyordered,0) - NVL(ol.qtyDelivered,0)) * ol.priceentered) AS livred,
      SUM(NVL(ol.qtyDelivered,0)* ol.priceentered)                                              AS soldeqdeliveredX
    FROM c_order ord
    INNER JOIN c_orderline ol
    ON ol.c_order_id   = ord.c_order_id
    AND ol.isactive    = 'Y'
    WHERE ord.isactive = 'Y'
    GROUP BY ord.c_order_id
    )qty ON qty.c_order_id = o.c_order_id
inner join c_doctype doctype on doctype.c_doctype_id = o.C_DOCTYPETARGET_ID and doctype.c_doctype_id in (
1000120,
1000848,
1000847,
1000098,
1000845,
1000846,
1000745,
1000102,
1000849,
1006385,
1006402,
1006400,
1006403)
LEFT join C_DOCTYPEINFO cdi on cdi.C_DOCTYPE_ID = o.C_DOCTYPETARGET_ID
  INNER JOIN AD_ORG org
  ON org.AD_ORG_ID = o.AD_ORG_ID
  INNER JOIN c_bpartner
  ON c_bpartner.c_bpartner_id = o.c_bpartner_id
  INNER JOIN ad_user salesRep

  ON salesrep.ad_user_id = o.salesrep_id
  INNER JOIN c_bpartner bp2
  ON bp2.c_bpartner_id = salesRep.c_bpartner_id
  LEFT JOIN AD_User au
  ON (au.C_BPartner_ID   = c_bpartner.C_BPartner_ID)
  WHERE o.DocStatus NOT IN ('DR','RE','VO')
  AND o.isactive         = 'Y'
  AND o.issotrx          ='Y'
  AND o.AD_CLIENT_ID     = 1000022-- and  qty.totalqtyordered=0
  AND o.C_DOCTYPE_ID != 1000102
 and au.IS_ZDEFAULT='Y' and au.iseggo ='N'
  ORDER BY org.name,o.C_DOCTYPETARGET_ID,o.DATEORDERED
)
SELECT "AD_CLIENT_ID","AD_ORG_ID","ISACTIVE","CREATED","CREATEDBY","UPDATED","UPDATEDBY","ORGANISATION","POREFERENCE","DOCUMENTNO","DATEORDERED","C_BPARTNER_NAME","PARTNER_KEY","PHONE","TOTALTTC","PAYE","SOLDE","C_ORDER_ID","TOTALQTYORDERED","SOLDEQDELIVERED","SOLDEQTYTODELIVERED","LIVRED","SOLDEQDELIVEREDX","VENDOR","TYPE_DOCUMENT","C_DOCTYPETARGET_ID","Z_DATELIVRCLI","PROM_BPARTNER_ID","Z_REFCHANTIER", "Z_PAYGI", "Z_SOLDEGI","SALESREP_ID","PROM_EXTCODE","XX_GESTIONNAIRE","C_BP_GROUP_ID" FROM table_solde 
WHERE solde<>0;
/

  CREATE OR REPLACE FORCE VIEW "ZRV_UNDELIVERED_GOOD" ("AD_CLIENT_ID", "AD_ORG_ID", "ISACTIVE", "CREATED", "CREATEDBY", "UPDATED", "UPDATEDBY", "ORGANISATION", "DOCUMENTNO", "POREFERENCE", "DATEORDERED", "C_BPARTNER_NAME", "PARTNER_KEY", "TOTALTTC", "TOTALHT", "M_PRODUCT_VALUE", "QTYORDERED", "QTYDELIVERED", "QTTORECIVE", "PRICEACTUAL","C_BP_GROUP_ID") AS 
  SELECT o.ad_client_id,
    o.ad_org_id AS ad_org_id,
    o.isactive  AS isactive,
    o.created   AS created,
    o.createdby AS createdby,
    o.updated   AS updated,
    o.updatedby AS updatedby,
    org.name    AS Organisation,
    o.DOCUMENTNO,
    o.poreference AS POREFERENCE,
    o.DATEORDERED,
    c_bpartner.name  AS C_BPARTNER_NAME,
    c_bpartner.value AS PARTNER_KEY,
    o.grandtotal     AS TOTALTTC,
    o.totallines     AS TOTALHT,
    M_PRODUCT.VALUE  AS M_PRODUCT_VALUE,
    C_ORDERLINE.QTYORDERED,
    C_ORDERLINE.QTYDELIVERED,
    C_ORDERLINE.QTYORDERED -C_ORDERLINE.QTYDELIVERED AS qtTorecive, C_ORDERLINE.PRICEACTUAL, o.C_BP_GROUP_ID
    
  FROM C_ORDER o
  INNER JOIN C_ORDERLINE
  ON o.C_ORDER_ID = C_ORDERLINE.C_ORDER_ID
  INNER JOIN AD_ORG org
  ON org.AD_ORG_ID = o.AD_ORG_ID
  INNER JOIN c_bpartner
  ON c_bpartner.c_bpartner_id = o.c_bpartner_id
  INNER JOIN M_PRODUCT
  ON C_ORDERLINE.M_PRODUCT_ID  = M_PRODUCT.M_PRODUCT_ID
  WHERE o.ISSOTRX              = 'Y' 
  and o.DocStatus NOT        IN ('DR','RE','VO')
  AND o.isactive                = 'Y'
  AND o.c_doctypetarget_id in (1000028,
1003821,
1001462,
1001673,
1004141,
1002487,
1003616)
 
  AND C_ORDERLINE.QTYDELIVERED < C_ORDERLINE.QTYORDERED
  
  ORDER BY C_BPARTNER_NAME,
    DOCUMENTNO
 ;
/

  CREATE OR REPLACE FORCE VIEW "ZRV_UNDELIVERED_COMMANDE" ("Z_ORDERSTEPSTATUS", "AD_CLIENT_ID", "AD_ORG_ID", "ISACTIVE", "CREATED", "CREATEDBY", "UPDATED", "UPDATEDBY", "ORGANISATION", "DOCUMENTNO", "PRODUIT", "POREFERENCE", "TYPE_DOC", "DATEORDERED", "DATE_LIV", "CLIENT", "REF_CLIENT", "QTY_COM", "QTY_LIV", "QTY_A_LIV", "PRIX_UNIT", "TOTALTTC", "TOTALHT", "DATEPOSE", "ACTIVELINE", "LINE", "PROM_BPARTNER_ID", "PROM_EXTCODE", "Z_VENDOR_ID", "Z_REFCHANTIER", "XX_GESTIONNAIRE","C_BP_GROUP_ID") AS 
  SELECT 
   O.Z_Orderstepstatus,
  o.ad_client_id,
    o.ad_org_id AS ad_org_id,
    o.isactive  AS isactive,
    o.created   AS created,
    o.createdby AS createdby,
    o.updated   AS updated,
    o.updatedby AS updatedby,
    org.name    AS Organisation,
    o.DOCUMENTNO,
    M_PRODUCT.VALUE  AS Produit,
    o.poreference AS POREFERENCE,
    C_DOCTYPE.NAME AS Type_doc,
     
    o.DATEORDERED,
    o.DATEPROMISED AS Date_liv,
    c_bpartner.name  AS Client,
    c_bpartner.value AS Ref_client, 
    C_ORDERLINE.QTYORDERED Qty_com,
    C_ORDERLINE.QTYDELIVERED AS Qty_liv,
    C_ORDERLINE.QTYORDERED -C_ORDERLINE.QTYDELIVERED  AS Qty_a_liv,
    ROUND(C_ORDERLINE.PRICEACTUAL,2) AS Prix_Unit,    
    o.grandtotal     AS TOTALTTC,
    o.totallines     AS TOTALHT,
    o.DATEPOSE AS DATEPOSE,
    C_ORDERLINE.isActive as ActiveLine,
    C_ORDERLINE.Line,o.PROM_BPartner_ID,o.PROM_ExtCode,o.Z_Vendor_ID,o.Z_RefChantier,o.XX_Gestionnaire,o.C_BP_GROUP_ID
    
  FROM C_ORDER o
  INNER JOIN C_ORDERLINE
  ON o.C_ORDER_ID = C_ORDERLINE.C_ORDER_ID
  INNER JOIN AD_ORG org
  ON org.AD_ORG_ID = o.AD_ORG_ID
  INNER JOIN c_bpartner
  ON c_bpartner.c_bpartner_id = o.c_bpartner_id
  INNER JOIN M_PRODUCT
  ON C_ORDERLINE.M_PRODUCT_ID  = M_PRODUCT.M_PRODUCT_ID
  INNER JOIN C_DOCTYPE on o.C_DOCTYPE_ID =C_DOCTYPE.C_DOCTYPE_ID

  WHERE o.ISSOTRX              = 'Y' 
  AND o.DocStatus NOT        IN ('DR','RE','VO')
  AND o.isactive                = 'Y'
 AND o.c_doctypetarget_id in (1005022,
1005028,
1005027,
1005280,
1004922,
1005029,
1000028,
1003821,
1001462,
1001673,
1004141,
1002487,
1003616,
1005282,
1005180,
1006401,
1006385,
1006400,
1006402,1005382 
)
  AND C_ORDERLINE.QTYDELIVERED <> C_ORDERLINE.QTYORDERED 

  ORDER BY Client,
  DOCUMENTNO;
/