--------------------------------------------------------
--  Fichier créé - lundi-octobre-07-2013   
--------------------------------------------------------

--------------------------------------------------------
--  DDL for View ZRV_CASHSTATE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ZRV_CASHSTATE" ("AD_CLIENT_ID", "AD_ORG_ID", "C_BANK_ID", "ORGANISATION", "BANKACCOUNT", "DOCUMENTNO", "DATETRX", "SS_METHODE", "TRXAMT", "BPNAME", "CB_PARTNER", "NUMFACTURE") AS 
  SELECT
   bs.ad_client_id,
   bs.ad_org_id,
   b.c_bank_id,
   org.name as organisation,
   b.name||' - '||ba.accountno as bankaccount,
   p.documentno,
   p.datetrx,
   zsp.value as ss_methode,
   p.payamt as trxamt,
   bp.name as bpname,
   bp.name || ' ' ||bp.name2 as cb_partner,
   nvl(i.documentNo,' ') as numFacture
  FROM  c_bankstatement bs
  LEFT JOIN c_bankaccount ba on ba.c_bankaccount_id = bs.c_bankaccount_id
  LEFT JOIN c_payment p on p.c_bankaccount_id = bs.c_bankaccount_id
  LEFT JOIN c_bankstatementline bsl on bsl.c_payment_id = p.c_payment_id
  LEFT JOIN c_bank b on b.c_bank_id = ba.c_bank_id
  LEFT JOIN ad_org org on org.AD_ORG_id = bs.AD_ORG_id
  LEFT JOIN ad_client cl on cl.AD_client_id = bs.AD_client_id
  LEFT JOIN c_bpartner bp  ON bp.c_bpartner_id = p.c_bpartner_id
  LEFT JOIN c_invoice i on i.c_invoice_id = p.c_invoice_id
  LEFT JOIN zsubpaymentrule zsp  ON zsp.zsubpaymentrule_id = p.zsubpaymentrule_id
  WHERE p.isreconciled ='N'
  AND bsl.c_bankstatement_id is null
  AND p.docstatus in ('CO','CL','VO','RE')
  ORDER BY  zsp.value,p.datetrx;
--------------------------------------------------------
--  DDL for View ZRV_CHIFFRE_AFFAIRE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ZRV_CHIFFRE_AFFAIRE" ("AD_CLIENT_ID", "AD_ORG_ID", "VALUEPRODUCT", "INVOICEDDATE", "CUMULQTY", "CUMULMONTANT", "AD_ORG_NAME") AS 
  SELECT tab_cumul."AD_CLIENT_ID",
    tab_cumul."AD_ORG_ID",
    tab_cumul."VALUEPRODUCT",
    tab_cumul."INVOICEDDATE",
    tab_cumul."CUMULQTY",
    tab_cumul."CUMULMONTANT",
    tab_cumul."AD_ORG_NAME"
  FROM
    (SELECT ca.*,
      SUM(montant) OVER (PARTITION BY ad_client_id, ad_org_id,ValueProduct, Famille,annee,mois order by annee, mois,jour ROWS UNBOUNDED PRECEDING) AS CUMULMONTANT,
      SUM(Qty) OVER (PARTITION BY ad_client_id, ad_org_id,ValueProduct, Famille,annee,mois order by annee, mois,jour ROWS UNBOUNDED PRECEDING)     AS CUMULQTY
    FROM
      (SELECT C_ORDER.ad_client_id,
        C_ORDER.ad_org_id,
        ad_org.name     AS ad_org_name,
        M_Product.Value AS ValueProduct,
        M_Product.Name  AS NameProduct,
        Z_gamme.name Famille,
        SUM(c_orderline.priceactual) Montant,
        SUM(C_OrderLine.QtyOrdered)Qty,
        C_ORDER.dateordered                 AS invoiceddate,
        TO_CHAR(C_ORDER.dateordered,'YYYY') AS annee,
        TO_CHAR(C_ORDER.dateordered,'MM')   AS mois,
        TO_CHAR(C_ORDER.dateordered,'DD')   AS jour
      FROM C_ORDER
      INNER JOIN C_orderline
      ON c_order.c_order_id = c_orderline.c_order_id
      INNER JOIN m_product
      ON m_product.m_product_id = c_orderline.m_product_id
      INNER JOIN c_bpartner
      ON c_orderline.c_bpartner_id = c_bpartner.c_bpartner_id
      INNER JOIN ad_org
      ON ad_org.ad_org_id = C_orderline.ad_org_id
      LEFT JOIN z_gamme
      ON z_gamme.Z_gamme_id          = m_product.z_gamme_id
      WHERE C_order.isactive         = 'Y'
      AND C_ORDER.docstatus         IN ('CO','CL' )
      AND C_ORDER.issotrx            = 'Y'
      AND c_order.c_doctypetarget_id = 1000849
      GROUP BY C_ORDER.ad_client_id,
        C_ORDER.ad_org_id,
        M_Product.Value,
        M_Product.Name,
        Z_gamme.name,
        ad_org.name,
        C_ORDER.dateordered,
        TO_CHAR(C_ORDER.dateordered,'YYYY'),
        TO_CHAR(C_ORDER.dateordered,'MM'),
        TO_CHAR(C_ORDER.dateordered,'DD')
      ORDER BY C_ORDER.dateordered,
        C_ORDER.ad_client_id,
        C_ORDER.ad_org_id,
        M_Product.Value,
        Z_gamme.name
      ) ca
    ) tab_cumul
  ORDER BY AD_ORG_NAME ASC,
    CUMULQTY DESC;
--------------------------------------------------------
--  DDL for View ZRV_CHIFFRE_AFFAIRE_WEB
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ZRV_CHIFFRE_AFFAIRE_WEB" ("AD_CLIENT_ID", "AD_ORG_ID", "documentNo", "cb_partner", "VALUEPRODUCT", "Montant", "QtyCommande", "QtyDelivred", "dateordered") AS 
  SELECT C_ORDER.ad_client_id            as AD_CLIENT_ID,
       C_ORDER.ad_org_id               as AD_ORG_ID,        
       C_ORDER.documentNo                  as documentNo,
        bp.name || ''|| bp.name2           as cb_partner,
        M_Product.Value                    as VALUEPRODUCT,
       c_orderline.PriceEntered            as montant ,
       C_OrderLine.QtyOrdered              as QtyCommande,
       C_OrderLine.QtyDelivered            as QtyDelivred,
       C_ORDER.dateordered                 as dateordered     
     FROM C_ORDER
      INNER JOIN C_orderline
      ON c_order.c_order_id = c_orderline.c_order_id
      INNER JOIN m_product
      ON m_product.m_product_id = c_orderline.m_product_id
      INNER JOIN c_bpartner bp
      ON c_orderline.c_bpartner_id = bp.c_bpartner_id
      INNER JOIN ad_org
      ON ad_org.ad_org_id = C_orderline.ad_org_id      
      WHERE C_order.isactive         = 'Y'
      AND C_ORDER.docstatus         IN ('CO','CL')
      AND C_ORDER.issotrx            = 'Y'
      AND c_order.c_doctypetarget_id = 1000849      
      ORDER BY C_ORDER.dateordered,
        C_ORDER.ad_client_id,
        C_ORDER.ad_org_id,
        M_Product.Value;
--------------------------------------------------------
--  DDL for View ZRV_CONCRETISATION
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ZRV_CONCRETISATION" ("AD_CLIENT_ID", "AD_ORG_ID", "C_BPARTNER_ID", "POREFERENCE", "NBRDEVIS", "NBRCONTRAT", "POURCENTAGE") AS 
  select 
contrat.ad_client_id,
contrat.ad_org_id, 
contrat.c_bpartner_id, 
contrat.poreference, 
nvl(devis.nbrdevis,0) as nbrdevis, 
nvl(contrat.nbrcontrat,0) as nbrcontrat,

case 
  when nvl(devis.nbrdevis,0) = 0 then 0
  when (nvl(contrat.nbrcontrat,0) / devis.nbrdevis) > 1 then 100
  else nvl(contrat.nbrcontrat,0) / devis.nbrdevis * 100  end 
as pourcentage

from
(
select o.ad_client_id, o.ad_org_id, o.c_bpartner_id, nvl(o.poreference,'N/A') as poreference, count(*) as nbrdevis
from c_order o
where o.poreference is not null and o.c_doctype_id = (select c_doctype_id from c_doctype where name='Devis Store'
and ad_client_id=(select ad_client_id from ad_client where name ='EGGO'))
group by o.ad_client_id,o.ad_org_id, o.c_bpartner_id, o.poreference
) devis
right join
(
select o.ad_client_id, o.ad_org_id, o.c_bpartner_id, nvl(o.poreference,'N/A') as poreference, count(*) as nbrcontrat 
from c_order o
where o.poreference is not null and o.c_doctype_id = (select c_doctype_id from c_doctype where name='Contrat Store'
and ad_client_id=(select ad_client_id from ad_client where name ='EGGO'))
group by o.ad_client_id,o.ad_org_id, o.c_bpartner_id, o.poreference
) contrat on contrat.poreference = devis.poreference;
--------------------------------------------------------
--  DDL for View ZRV_CUSTOMER_LIST
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ZRV_CUSTOMER_LIST" ("AD_CLIENT_ID", "AD_ORG_ID", "documentno", "grandTotal", "clientName", "address1", "address2", "postal", "city", "country") AS 
  SELECT o.ad_client_id,
    o.ad_org_id,
    o.documentno,    
    o.grandTotal,
    pc.name2 || ' ' || pc.name as clientName,lc.address1,lc.address2,lc.postal,lc.city,co.name as country
 from c_order o
-- Customer information.
join c_bpartner pc on (pc.c_bpartner_id = o.c_bpartner_id)
-- Delivery Adresse.
left join c_bpartner_location blc on (blc.c_bpartner_location_id = o.bill_location_id and blc.isbillto = 'Y')
left join c_location lc on (lc.c_location_id = blc.c_location_id)
left join c_country co on (co.c_country_id = lc.c_country_id)
where o.c_doctypetarget_id = 1000849;
--------------------------------------------------------
--  DDL for View ZRV_EXPORTFUSION
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ZRV_EXPORTFUSION" AS
  SELECT P.ad_client_id ,
    p.ad_org_id ,
    p.value                                                                        AS UNM ,
    p.value                                                                        AS UNEW ,
    p.name                                                                         AS ORD ,
    plang.description                                                              AS DSC ,
    '7'                                                                            AS CATR ,
    sf.name                                                                        AS PTYP ,
    ssf.name                                                                       AS STYP ,
    '1'                                                                            AS VCAT ,
    'N'                                                                            AS GRAPH ,
    '1'                                                                            AS STYLE ,
    '0'                                                                            AS TYPE ,
    nvl(round(getPriceLastVersionPriceList(plv.M_pricelist_id,p.m_product_id, sysdate) * 100)-(zpt.pricestd*100),0) AS VENTE,
    nvl(round(getPriceLastVersionPriceList(pla.M_pricelist_id,p.m_product_id, sysdate) * 100),0) AS ACHAT,
    nvl((zpt.pricestd * 100),0)                                                    AS ecotax,
    pla.M_Pricelist_id                                                             AS pricelistAchat_id,
    plv.M_Pricelist_id                                                             AS pricelistVente_id,
    plang.ad_language                                                              AS language_Id
  FROM m_product p
  LEFT JOIN m_product_trl plang  ON plang.M_product_id = p.m_product_id
  LEFT JOIN y_marque marq        ON marq.y_marque_id = p.y_marque_id
  LEFT JOIN M_pricelist pla      ON pla.ad_client_id = p.ad_client_id AND pla.issopricelist = 'N'
  LEFT JOIN M_pricelist plv      ON plv.ad_client_id = p.ad_client_id AND plv.issopricelist = 'Y'
  LEFT JOIN (SELECT m_product_id, SUM(pricestd) AS pricestd FROM z_producttax GROUP BY m_product_id ) zpt ON zpt.m_product_id = p.m_product_id
  LEFT JOIN z_s_s_famille ssf ON ssf.z_s_s_famille_id = p.z_s_s_famille_id
  LEFT JOIN z_s_famille sf    ON sf.z_s_famille_id = p.z_s_famille_id
  LEFT JOIN m_product_po po   ON p.m_product_id = po.m_product_id
  LEFT JOIN c_bpartner cb     ON po.c_bpartner_id = cb.c_bpartner_id
  WHERE p.isactive    ='Y' and marq.name not like ('NOBILIA%')
  AND p.discontinued  ='N';
  
--------------------------------------------------------
--  DDL for View ZRV_GAMME_PRODUCT
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ZRV_GAMME_PRODUCT" ("AD_CLIENT_ID", "AD_ORG_ID", "CREATED", "CREATEDBY", "UPDATED", "UPDATEDBY", "ISACTIVE", "Z_GAMME_ID", "GAMMENAME", "GAMMEVALUE", "GAMMEDESCRIPTION", "M_PRODUCT_ID", "PRODUCTVALUE", "PRODUCTNAME") AS 
  SELECT
    g.ad_client_id,
    g.ad_org_id,
    g.created,
    g.createdby,
    g.updated,
    g.updatedby,
    g.isactive,
  
    g.Z_gamme_id          AS z_gamme_id,
    g.name                as gammename,
    g.value               as gammevalue,    
    g.description     
    AS gammedescription,

    p.m_product_id,
    p.value             AS productvalue,
    p.name              AS productname
    
    FROM   z_gamme g 
    INNER JOIN m_product p ON g.Z_gamme_id = p.z_gamme_id
    order by g.value;
--------------------------------------------------------
--  DDL for View ZRV_LIST_CONSIGNATION
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ZRV_LIST_CONSIGNATION" ("AD_CLIENT_ID", "AD_ORG_ID", "COMMANDENUMBER", "DATECONSIGNATION", "PRODUCTCODE", "PRODUCTNAME", "PRODUCTFAMILLY") AS 
  select o.ad_client_id, o.ad_org_id, o.documentno CommandeNumber, o.dateordered DateConsignation, p.value ProductCode, p.name ProductName, f.name ProductFamilly
  from c_order o
  join c_orderline ol on (ol.c_order_id = o.c_order_id)
  join m_product p on (p.m_product_id = ol.m_product_id)
  left join z_s_famille f on (f.z_s_famille_id = p.z_s_famille_id)
  -- doc type consignation
  join c_doctype doc on (doc.c_doctype_id = o.c_doctype_id and doc.c_doctype_id = 1001051)
  where p.name <> 'CONSIGNATION' and ol.qtyordered > 0;
--------------------------------------------------------
--  DDL for View ZRV_LISTMOVEMENT
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ZRV_LISTMOVEMENT" ("AD_CLIENT_ID", "AD_ORG_ID", "M_MOVEMENT_ID", "MOVEMENTDATE", "DOCUMENTNO", "M_PRODUCT_ID", "MOVEMENTQTY") AS 
  select
m.ad_client_id,
m.ad_org_id,
m.m_movement_id,
m.movementdate,
m.documentno,
ml.m_product_id,
ml.movementqty
from m_movement m
left join (select m_product_id, m_movement_id, sum(movementqty) as movementqty from m_movementline group by m_movement_id, m_product_id) ml on ml.m_movement_id = m.m_movement_id
where m.docstatus in ('CO','CL','RE','VO','IP')
order by m.movementdate;
--------------------------------------------------------
--  DDL for View ZRV_LISTPAYMENT
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ZRV_LISTPAYMENT" ("AD_CLIENT_ID", "AD_ORG_ID", "DOCUMENTNO", "DATEACCT", "AD_USER_NAME", "C_BPARTNER_NAME", "GRANDTOTAL", "PAYAMT", "ZSUBPAYMENTRULE_NAME", "ZSUBPAYMENTRULE_ID") AS 
  SELECT c_payment.ad_client_id,
  c_payment.ad_org_id ,
  C_PAYMENT.DOCUMENTNO ,
  c_payment.dateacct ,
  ad_user.name as ad_user_name,
  c_BPARTNER.name as c_bpartner_name,
  c_invoice.grandtotal ,
  c_payment.payamt ,
  ZSUBPAYMENTRULE.name AS ZSUBPAYMENTRULE_name,
  ZSUBPAYMENTRULE.ZSUBPAYMENTRULE_ID
FROM c_payment
INNER JOIN ad_user
ON c_payment.createdby = ad_user.ad_user_id and ad_user.isactive = 'Y'
INNER JOIN c_bpartner
ON c_payment.c_bpartner_id = c_bpartner.c_bpartner_id and c_bpartner.isactive = 'Y'
INNER JOIN c_invoice
ON c_payment.c_invoice_id = c_invoice.c_invoice_id and c_invoice.isactive = 'Y'
INNER JOIN zsubpaymentrule
ON c_payment.zsubpaymentrule_id = zsubpaymentrule.zsubpaymentrule_id and zsubpaymentrule.isactive = 'Y'
AND c_payment.ad_client_id      = zsubpaymentrule.ad_client_id
where c_payment.isactive = 'Y';
--------------------------------------------------------
--  DDL for View ZRV_LISTPRODUCT
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ZRV_LISTPRODUCT" ("AD_CLIENT_ID", "AD_ORG_ID", "VALUE", "ISWEBSTOREFEATURED", "FAMILLENAME", "SUBFAMILLENAME", "GAMMENAME", "GAMMEDESCRIPTION", "MARQUENAME") AS 
  (SELECT p.ad_client_id,
    p.ad_org_id,
    p.value,
    p.iswebstorefeatured,
    NVL(f.name,'N/A')         AS FamilleName,
    NVL(s_f.name,'N/A')       AS SubFamilleName,
    NVL(g.name,'N/A')         AS GammeName,
    NVL(g.description ,'N/A') AS GammeDescription,
    NVL(m.name ,'N/A')        AS MarqueName
  FROM m_product p
  LEFT JOIN Z_S_S_S_FAMILLE s_f
  ON (p.z_s_s_s_famille_id = s_f.z_S_S_S_famille_ID)
  LEFT OUTER JOIN z_gamme g
  ON (p.z_gamme_id = g.z_gamme_id)
  LEFT OUTER JOIN y_marque m
  ON (p.y_marque_id = m.y_marque_id)
  LEFT OUTER JOIN Z_S_FAMILLE f
  ON (p.z_s_famille_id = f.z_s_famille_id)
  );
--------------------------------------------------------
--  DDL for View ZRV_LISTSTOCK
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ZRV_LISTSTOCK" ("AD_CLIENT_ID", "AD_ORG_ID", "M_PRODUCT_ID", "VALUE", "QTYONHAND", "QTYRESERVED", "QTYAVAILABLE", "FAMILLENAME", "SUBFAMILLENAME", "GAMMENAME", "GAMMEDESCRIPTION", "MARQUENAME", "Z_S_FAMILLE_ID", "Z_S_S_S_FAMILLE_ID", "Z_GAMME_ID", "Y_MARQUE_ID") AS 
  SELECT s.AD_Client_ID                                     AS AD_Client_ID,
    s.AD_Org_ID                                             AS AD_Org_ID,
    s.M_Product_ID                                          AS M_Product_ID,
    p.Value                                                 AS Value,
    s.QtyOnHand                                             AS QtyOnHand,
    s.QtyReserved                                           AS QtyReserved,
    s.QtyOnHand-s.QtyReserved-s.QtyDedicated-s.QtyAllocated AS QtyAvailable,
    NVL(f.name,'N/A')                             AS FamilleName,
    NVL(s_f.name,'N/A')                           AS SubFamilleName,
    NVL(g.name,'N/A')                             AS GammeName,
    NVL(g.description ,'N/A')                     AS GammeDescription,
    NVL(m.name ,'N/A')                            AS MarqueName,
    f.Z_S_FAMILLE_ID,
    s_f.z_s_s_s_famille_id,
    g.z_gamme_id,
    m.y_marque_id
  FROM M_Storage_V s
  INNER JOIN M_Locator l  ON (s.M_Locator_ID=l.M_Locator_ID)
  INNER JOIN M_Product p   ON (s.M_Product_ID=p.M_Product_ID)
  LEFT OUTER JOIN M_AttributeSetInstance asi   ON (s.M_AttributeSetInstance_ID=asi.M_AttributeSetInstance_ID)
  LEFT OUTER JOIN Z_S_S_S_FAMILLE s_f  ON (p.z_s_s_s_famille_id = s_f.z_S_S_S_famille_ID)
  LEFT OUTER JOIN z_gamme g  ON (p.z_gamme_id = g.z_gamme_id)
  LEFT OUTER JOIN y_marque m ON (p.y_marque_id = m.y_marque_id)
  LEFT OUTER JOIN Z_S_FAMILLE f   ON (p.z_s_famille_id = f.z_s_famille_id);
--------------------------------------------------------
--  DDL for View ZRV_LIVRAISON_ATTENTE_FRANCO
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ZRV_LIVRAISON_ATTENTE_FRANCO" ("AD_CLIENT_ID", "AD_ORG_ID", "COMMANDEREF", "DATECOMMANDE", "PRODUCT", "QTYMIN", "QTYORDERED", "PRICEMIN", "PRICEORDERED", "FOURNISSEURID", "Marque", "Famille", "Gamme") AS 
  SELECT o.ad_client_id,
    o.ad_org_id,
    o.documentno CommandeRef,
    o.created DateCommande,
    p.name Product,
    po.Order_Min QtyMin,
    ol.qtyordered QtyOrdered,
    (c.currentcostprice * po.Order_Min) PriceMin,
    (c.currentcostprice * ol.qtyordered) PriceOrdered,
    bp.c_bpartner_id FournisseurID,
    p.Y_MARQUE_ID as marque,
    p.z_s_famille_id as famille,
    p.z_gamme_id as Gamme
  FROM m_product p
      
  JOIN m_product_po po
  ON (p.m_product_id = po.m_product_id)
  JOIN m_cost c
  ON (c.m_product_id = p.m_product_id)
  JOIN c_orderline ol
  ON (ol.m_product_id = p.m_product_id)
  JOIN c_order o
  ON (ol.c_order_id = o.c_order_id
  AND o.issotrx     = 'N')
  LEFT JOIN c_bpartner bp
  ON (bp.c_bpartner_id = po.c_bpartner_id)
  WHERE p.isactive     = 'Y'
  AND po.Order_Min     > ol.qtyordered
  AND o.issent         = 'N'
  ORDER BY o.documentno;
--------------------------------------------------------
--  DDL for View ZRV_PAYMENT_TYPE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ZRV_PAYMENT_TYPE" ("AD_CLIENT_ID", "AD_ORG_ID", "CREATED", "CREATEDBY", "UPDATED", "UPDATEDBY", "ISACTIVE", "DOCUMENTNO", "DATEACCT", "CV", "BPNAME", "GRANDTOTAL", "ISSOTRX") AS 
  select 
o.ad_client_id,
o.ad_org_id,
o.created,
o.createdby,
o.updated,
o.updatedby,
o.isactive,
o.documentno, 
trunc(o.dateacct) as dateacct, 
usr.name as CV, 
nvl(bp.name,bp.value) as bpname, 
o.grandtotal, o.issotrx
from c_order o
inner join c_bpartner bp on bp.c_bpartner_id = o.c_bpartner_id
inner join ad_user usr on usr.ad_user_id = o.salesrep_id
order by o.c_order_id;
--------------------------------------------------------
--  DDL for View ZRV_PRICELIST
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ZRV_PRICELIST" ("AD_CLIENT_ID", "AD_ORG_ID", "M_PRODUCT_ID", "PRODUCTVALUE", "PRODUCTNAME", "M_PRICELIST_ID", "PRICELISTNAME", "M_PRICELIST_VERSION_ID", "PRICELISTVERSIONNAME", "VALIDFROM", "VALIDTO", "PRICESTD") AS 
  select
p.ad_client_id,
p.ad_org_id,
p.m_product_id,
p.value as productValue,
p.name as productName,
pl.m_pricelist_id,
pl.name as pricelistName,
plv.m_pricelist_version_id,
plv.name as pricelistVersionName,
trunc(plv.validfrom) as validfrom,
trunc(plv.validto) as validto,
pp.pricestd
from m_product p
inner join  m_productprice pp      on p.m_product_id = pp.m_product_id and pp.isactive = 'Y'
inner join m_pricelist_version plv on plv.m_pricelist_version_id = pp.m_pricelist_version_id and plv.isactive = 'Y'
inner join m_pricelist pl          on pl.m_pricelist_id = plv.m_pricelist_id and pl.isactive = 'Y'
where p.isactive = 'Y';
--------------------------------------------------------
--  DDL for View ZRV_PRICELIST_HISTORY
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ZRV_PRICELIST_HISTORY" ("AD_CLIENT_ID", "AD_ORG_ID", "ISACTIVE", "CREATED", "CREATEDBY", "UPDATED", "UPDATEDBY", "M_PRODUCT_ID", "PRODUCTVALUE", "PRODUCTNAME", "M_PRICELIST_ID", "PRICELISTNAME", "M_PRICELIST_VERSION_ID", "PRICELISTVERSIONNAME", "VALIDFROM", "VALIDTO", "PRICESTD", "ISSOPRICELIST") AS 
  SELECT 
p.ad_client_id,
p.ad_org_id,
p.isactive,
p.created,
p.createdby,
p.updated,
p.updatedby,
p.m_product_id,

p.value as productValue,
p.name as productName,
pl.m_pricelist_id,
pl.name as pricelistName,
plv.m_pricelist_version_id,
plv.name as pricelistVersionName,
trunc(plv.validfrom) as validfrom,
nvl(trunc(plv.validto),to_date('31/12/9999','dd/MM/yyyy')) as validto,
pp.pricestd,

pl.issopricelist

from m_product p
inner join  m_productprice pp      on p.m_product_id = pp.m_product_id 
inner join m_pricelist_version plv on plv.m_pricelist_version_id = pp.m_pricelist_version_id 
inner join m_pricelist pl          on pl.m_pricelist_id = plv.m_pricelist_id 
order by pl.name, p.value;
--------------------------------------------------------
--  DDL for View ZRV_PRODUCT_RENT
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ZRV_PRODUCT_RENT" ("AD_CLIENT_ID", "AD_ORG_ID", "FOURNISSEURID", "FOURNISSEUR", "FAMILLE", "PRODUCTREF", "PRODUCT", "PA", "PV", "GAMME", "GAMMEID", "RENTABILITE") AS 
  SELECT
    p.AD_Client_ID AS AD_Client_ID,
    p.AD_Org_ID AS AD_Org_ID,
    bp.c_bpartner_id FournisseurID,
    NVL(bp.value, 'N/A') Fournisseur,
    NVL(f.name,'N/A') as Famille,
    p.value ProductRef,
    p.name Product,
    NVL(pc.LASTCOSTPRICE,0) as PA ,
    NVL(pv.pricestd,0) as PV,
    NVL(g.name,'N/A') as Gamme,
    g.z_gamme_id as GammeID,
    case when pv.pricestd > 0 then pc.LASTCOSTPRICE / pv.pricestd else 0 end AS Rentabilite
FROM M_Product p
    LEFT JOIN m_product_po po ON (po.m_product_id = p.m_product_id)
    LEFT JOIN c_bpartner bp on bp.c_bpartner_id = po.c_bpartner_id
    LEFT JOIN zrv_product_pv pv ON (p.m_product_id = pv.m_product_id) --PV
    LEFT JOIN m_cost pc  ON (p.m_product_id = pc.m_product_id ) --PA
    LEFT JOIN z_gamme g  ON (p.z_gamme_id = g.z_gamme_id )
    LEFT JOIN Z_S_FAMILLE f  ON (p.z_s_famille_id = f.z_s_famille_id)
where p.isactive = 'Y'
order by g.name, p.name;
--------------------------------------------------------
--  DDL for View ZRV_PROMOTEUR
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ZRV_PROMOTEUR"  AS 
  select
o.ad_client_id,
o.ad_org_id,
cb.C_BPartner_ID,
o.documentno,
o.description,
o.poreference,
o.datepose,
ol.line,
o.z_refchantier,
p.name,
ol.qtydelivered,
ol.linenetamt ,
round(ol.linenetamt /(1+(ct.rate/100)),2) as TotalLineHTVA,
ol.DatePromised,
iol.updated
from c_orderline ol
inner join c_tax ct on ct.c_tax_id = ol.c_tax_id
inner join c_order o on o.c_order_id = ol.c_order_id
inner join C_BPartner cb on cb.c_bpartner_id = o.c_bpartner_id
inner join m_inoutline iol on iol.c_orderline_id = ol.c_orderline_id
inner join m_product p on iol.m_product_id = p.m_product_id
where o.c_doctypetarget_id = 1000028
  and o.docstatus not in('DR')
  and o.z_refchantier is not null
order by o.c_order_id, ol.line;
--------------------------------------------------------
--  DDL for View ZRV_PROVORDERUNDELIVERED
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ZRV_PROVORDERUNDELIVERED" ("AD_CLIENT_ID", "AD_ORG_ID", "DOCUMENTNO", "DATEORDERED", "QTYORDERED", "QTYDELIVERED", "M_PRODUCT_VALUE", "VENDORPRODUCTNO", "C_BPARTNER_ID", "C_BPARTNER_NAME") AS 
  SELECT C_order.AD_CLIENT_ID,
    c_order.ad_org_id,
    C_ORDER.DOCUMENTNO ,
    C_ORDER.DATEORDERED ,
    C_ORDERLINE.QTYORDERED,
    C_ORDERLINE.QTYDELIVERED,
    M_PRODUCT.VALUE AS M_PRODUCT_VALUE,
    M_PRODUCT_PO.VENDORPRODUCTNO ,
    c_orderline.c_bpartner_id,
    c_bpartner.name AS C_BPARTNER_NAME
  FROM C_ORDER
  INNER JOIN C_ORDERLINE  ON C_ORDER.C_ORDER_ID    = C_ORDERLINE.C_ORDER_ID
  INNER JOIN M_PRODUCT    ON C_ORDERLINE.M_PRODUCT_ID = M_PRODUCT.M_PRODUCT_ID
  INNER JOIN M_PRODUCT_PO ON M_PRODUCT.M_PRODUCT_ID = M_PRODUCT_PO.M_PRODUCT_ID
  INNER JOIN c_bpartner   ON c_bpartner.c_bpartner_id  = c_orderline.c_bpartner_id
  WHERE C_ORDER.ISSOTRX   = 'N'
  AND C_ORDER.DOCSTATUS   in ('CO','CL')
  AND C_ORDERLINE.QTYDELIVERED < C_ORDERLINE.QTYORDERED
  ORDER BY DOCUMENTNO;
--------------------------------------------------------
--  DDL for View ZRV_PURCHASESTATS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ZRV_PURCHASESTATS" ("AD_CLIENT_ID", "AD_ORG_ID", "DOCUMENTNO", "C_BPARTNER_ID", "FOURNISSEUR", "DATEORDERED", "GRANDTOTAL") AS 
  SELECT
    c_order.ad_client_id,
    c_order.ad_org_id,
    c_order.documentno,
    c_bpartner.c_bpartner_id,
    c_bpartner.value     AS fournisseur,
    c_order.dateordered,
    c_order.grandtotal
  FROM c_order
  INNER JOIN c_bpartner  ON c_bpartner.c_bpartner_id = c_order.c_bpartner_id
  WHERE c_order.issotrx='N'
  AND c_order.docstatus in ('CO','CL');
--------------------------------------------------------
--  DDL for View ZRV_SALES_PURCHASE_HISTORY
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ZRV_SALES_PURCHASE_HISTORY" ("AD_CLIENT_ID", "AD_ORG_ID", "ISACTIVE", "CREATED", "CREATEDBY", "UPDATED", "UPDATEDBY", "C_ORDER_DOCUMENTNO", "LINE", "C_ORDER_ID", "C_DOCTYPE_ID", "ISSOTRX", "C_ORDERLINE_ID", "DATEORDERED", "M_PRODUCT_ID", "SERNO", "PRODUCT_DESC", "PRODUCT_VALUE", "QTYORDERED", "QTYINVOICED", "MARGIN") AS 
  SELECT 
    l.AD_Client_ID                                AS AD_Client_ID,
    l.AD_Org_ID                                   AS AD_Org_ID,
    l.IsActive                                    AS IsActive,
    l.Created                                     AS Created,
    l.CreatedBy                                   AS CreatedBy,
    l.Updated                                     AS Updated,
    l.UpdatedBy                                   AS UpdatedBy,
    o.documentno                                  AS C_ORDER_DOCUMENTNO,
    l.line,
    o.C_Order_ID                                  AS C_Order_ID,
    o.C_DocType_ID                                AS C_DocType_ID,
    o.IsSOTrx                                     AS IsSOTrx,
    l.C_OrderLine_ID                              AS C_OrderLine_ID,
    l.DateOrdered                                 AS DateOrdered,
    l.M_Product_ID                                AS M_Product_ID,
    pasi.SerNo                                    AS SerNo,
    p.description                                 AS PRODUCT_DESC,
    p.value                                       AS PRODUCT_VALUE,

    CASE
      WHEN o.IsReturnTrx='Y'
      THEN l.QtyOrdered*-1
      ELSE l.QtyOrdered
    END AS QtyOrdered,

    CASE
      WHEN o.IsReturnTrx='Y'
      THEN l.QtyInvoiced*-1
      ELSE l.QtyInvoiced
    END            AS QtyInvoiced,
    
    CASE
      WHEN PriceLimit=0
      THEN 0
      ELSE ROUND((PriceActual-PriceLimit)/PriceLimit*100,2)
    END AS Margin
    
  FROM C_Order o
  INNER JOIN C_OrderLine l                     ON ( o.C_Order_ID=l.C_Order_ID)
  LEFT OUTER JOIN M_AttributeSetInstance pasi  ON ( l.M_AttributeSetInstance_ID=pasi.M_AttributeSetInstance_ID)
  INNER JOIN M_Product p                       ON ( p.M_Product_ID = l.M_Product_ID )
  where o.docstatus in ('CO','CL','VO','RE')
  ORDER BY 
      o.documentno,l.line;
--------------------------------------------------------
--  DDL for View ZRV_SAVSTATUS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ZRV_SAVSTATUS" ("AD_CLIENT_ID", "AD_ORG_ID", "DOCUMENTNO", "SAV_STATUS", "DATEMOUVEMENT", "CLIENTNAME", "PRODUCTVALUE", "PRODUCTCATEGORY") AS 
  SELECT ord.ad_client_id, 
    ord.ad_org_id,         
    ord.documentno,        
    sav.sav_status,      
    sav.datemouvement,
    bp.name    || ' '    || bp.name2 AS clientname,
    p.value     AS productvalue,
    mpc.name    AS productcategory
  FROM z_savstatus sav
  INNER JOIN c_order ord
  ON ord.c_order_id =sav.c_order_id
  AND ord.isactive  = 'Y'
  INNER JOIN c_bpartner bp
  ON bp.c_bpartner_id = ord.c_bpartner_id
  AND bp.isactive     = 'Y'
  INNER JOIN c_orderline ordl
  ON ordl.c_order_id = ord.c_order_id
  AND ordl.isactive  = 'Y'
  INNER JOIN m_product p
  ON p.m_product_id = ordl.m_product_id
  AND p.isactive    = 'Y'
  LEFT OUTER JOIN m_product_category mpc
  ON p.m_product_category_id = mpc.m_product_category_id;
--------------------------------------------------------
--  DDL for View ZRV_STATISTIQUE_VENTE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ZRV_STATISTIQUE_VENTE" ("AD_CLIENT_ID", "AD_ORG_ID", "MAGASIN", "SALESREP_ID", "C_DOCTYPE_ID", "VENDEUR", "CLIENT", "PRICEACTUAL", "M_PRODUCT_ID", "ARTICLE", "QTYORDERED", "QTYDELIVERED", "MARGINAMT", "MARGIN", "DATEORDERED", "ANNEE", "MOIS", "JOUR", "GAMME", "S_FAMILLE", "S_S_FAMILLE", "S_S_S_FAMILLE") AS 
  SELECT
        o.ad_client_id,
        o.ad_org_id,
        org.value as magasin,
        o.salesrep_id,
        o.c_doctype_id, 
        coalesce(usr.name,usr.value) as Vendeur,     
        coalesce(bp.name, bp.value) as Client,
        ol.priceactual,
        p.m_product_id,
        coalesce(p.name, p.value) as Article,
        
        CASE WHEN o.IsReturnTrx='Y' THEN ol.QtyOrdered*-1 ELSE ol.QtyOrdered END AS QtyOrdered,
        CASE WHEN o.IsReturnTrx='Y' THEN ol.QtyDelivered*-1 ELSE ol.QtyDelivered END AS QtyDelivered,
        CASE WHEN PriceLimit=0      THEN 0 ELSE (CASE WHEN o.IsReturnTrx='Y' THEN (PriceActual-PriceLimit)*QtyDelivered*-1 ELSE (PriceActual-PriceLimit)*QtyDelivered END) END AS MarginAmt,
        CASE WHEN PriceLimit=0      THEN 0 ELSE ROUND((PriceActual-PriceLimit)/PriceLimit*100,2) END AS Margin,
        
        trunc(o.dateordered) as dateordered,
        TO_CHAR(o.dateordered,'YYYY') AS annee,
        TO_CHAR(o.dateordered,'MM')   AS mois,
        TO_CHAR(o.dateordered,'DD')   AS jour,
        g.name as Gamme,
        coalesce(zs.value,zs.name) as s_famille,
        coalesce(zss.value,zss.name) as s_s_famille,
        coalesce(zsss.value,zsss.name) as s_s_s_famille
        
      FROM C_ORDERLINE ol
      LEFT JOIN c_order o            ON o.c_order_id = ol.c_order_id
      LEFT JOIN ad_org org           ON org.ad_org_id = o.ad_org_id
      LEFT JOIN m_product p          ON p.m_product_id = ol.m_product_id
      LEFT JOIN c_bpartner bp        ON ol.c_bpartner_id = bp.c_bpartner_id
      LEFT JOIN z_gamme  g           ON g.Z_gamme_id = p.z_gamme_id
      LEFT JOIN ad_user usr          ON usr.ad_user_id      = o.salesrep_id
      LEFT JOIN z_s_famille zs       ON zs.z_s_famille_id = p.z_s_famille_id
      LEFT JOIN z_s_s_famille zss    ON zss.z_s_s_famille_id = p.z_s_s_famille_id
      LEFT JOIN z_s_s_s_famille zsss ON zsss.z_s_s_s_famille_id = p.z_s_s_s_famille_id
      
      WHERE o.isactive = 'Y'
      AND o.docstatus  IN ('CO','CL','VO','RE')
      AND o.issotrx    = 'Y';
--------------------------------------------------------
--  DDL for View ZRV_STATISTIQUE_VENTE_NOFILTER
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ZRV_STATISTIQUE_VENTE_NOFILTER" ("AD_CLIENT_ID", "AD_ORG_ID", "FAMILLE", "MARQUE", "GAMME", "PRODUIT", "FOURNISSEUR", "VENDEUR", "DATEORDERED", "ANNEE", "MOIS", "JOUR") AS 
  Select distinct 
          
          c.ad_client_id,
          c.ad_org_id,
          f.name Famille,
          m.name Marque,
          Z_gamme.name Gamme,
          p.Name Produit,
          NVL(bp_po.name, 'N/A') Fournisseur,          
          bp_ol.name Vendeur,    
          c.dateordered,          
          TO_CHAR(c.dateordered,'YYYY') as annee,
          TO_CHAR(c.dateordered,'MM') as mois,
          TO_CHAR(c.dateordered,'DD') as jour          
  From C_ORDER c
    inner join C_orderline  on (c.c_order_id = c_orderline.c_order_id)       
    inner join m_product p on (p.m_product_id = c_orderline.m_product_id)
    inner join c_bpartner bp_ol on (c_orderline.c_bpartner_id = bp_ol.c_bpartner_id)
    left join m_product_po po on (po.m_product_id = p.m_product_id)
    left join c_bpartner bp_po on bp_po.c_bpartner_id = po.c_bpartner_id
    left join y_marque m on (p.y_marque_id = m.y_marque_id)
    left join z_gamme on (z_gamme.Z_gamme_id = p.z_gamme_id)
    left join Z_S_FAMILLE f on (p.z_s_famille_id = f.z_s_famille_id)
              
  where c.isactive = 'Y' 
    and c.docstatus in ('CO','CL' )
    and c.issotrx = 'Y'

  order by bp_ol.name, c.dateordered;
--------------------------------------------------------
--  DDL for View ZRV_STOCK_MAGASIN
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ZRV_STOCK_MAGASIN" ("AD_CLIENT_ID", "AD_ORG_ID", "PROD_ID", "PRODUCTREF", "MAGASIN", "FAMILLENAME", "MARQUENAME", "GAMMENAME", "QTYONHAND", "QTYRESERVED", "QTYDEDICATED", "QTYALLOCATED", "QTYAVAILABLE", "PRODUCTNAME", "FOURNISSEUR", "PA", "PV", "QTYNEGATIVE") AS 
  SELECT  
    s.AD_Client_ID AS AD_Client_ID, 
    s.AD_Org_ID AS AD_Org_ID,
    p.m_product_id prod_id,
    p.value ProductRef, 
    ao.name Magasin,
    NVL(f.name,'N/A') as FamilleName,
    NVL(m.name ,'N/A') as MarqueName,
    NVL(g.name,'N/A')  as GammeName,
    s.QtyOnHand AS QtyOnHand,
    s.QtyReserved AS QtyReserved, 
    s.QtyReserved AS QtyDedicated,
    s.QtyReserved AS QtyAllocated,
    NVL(QtyOnHand,0) - NVL(QtyReserved,0) - NVL(QtyDedicated,0) - NVL(QtyAllocated,0) AS QtyAvailable,
    p.name ProductName,
    NVL(bp.value, 'N/A') as Fournisseur,
    NVL(pc.LASTCOSTPRICE,0) as PA ,
    NVL(pv.pricestd,0) as PV,
    case when (NVL(QtyOnHand,0) - NVL(QtyReserved,0) - NVL(QtyDedicated,0) - NVL(QtyAllocated,0)) > 0 then 'N' else 'Y' end as QtyNegative
  
  FROM M_Storage_V s
    LEFT JOIN AD_ORG ao ON (s.AD_ORG_ID = ao.ad_org_id)
    LEFT JOIN M_Locator l ON (s.M_Locator_ID=l.M_Locator_ID)
    LEFT JOIN M_Product p ON (s.M_Product_ID=p.M_Product_ID)
    LEFT JOIN m_product_po po ON (po.m_product_id = p.m_product_id)
    LEFT JOIN c_bpartner bp on bp.c_bpartner_id = po.c_bpartner_id
    LEFT JOIN zrv_product_pv pv ON (p.m_product_id = pv.m_product_id) --PV
    LEFT JOIN m_cost pc  ON (p.m_product_id = pc.m_product_id ) --PA
    LEFT JOIN z_gamme g  ON (p.z_gamme_id = g.z_gamme_id )
    LEFT JOIN y_marque m  ON (p.y_marque_id = m.y_marque_id )
    LEFT JOIN Z_S_FAMILLE f  ON (p.z_s_famille_id = f.z_s_famille_id)
  order by ProductRef, Magasin;
--------------------------------------------------------
--  DDL for View ZRV_STOCK_MAGASIN_NEGATIF
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ZRV_STOCK_MAGASIN_NEGATIF" ("AD_CLIENT_ID", "AD_ORG_ID", "PRODUCTVALUE", "FAMILLE", "GAMME", "QTYONHAND", "QTYRESERVED", "QTYAVAILABLE", "PA", "PV") AS 
  SELECT s.AD_Client_ID                                 ,
    s.AD_Org_ID                                         ,
    p.value                                             AS PRODUCTVALUE,
    NVL(f.name,' ')                                     AS FAMILLE,
    NVL(g.name,' ')                                     AS GAMME,
    SUM(s.QtyOnHand)                                    AS QTYONHAND,
    SUM(s.QtyReserved)                                  AS QTYRESERVED ,
    NVL(SUM(s.QtyOnHand),0) - NVL(SUM(s.QtyReserved),0) AS QTYAVAILABLE,
    NVL(pc.LASTCOSTPRICE,0)                             AS PA,
    NVL(pv.pricestd,0)                                  AS PV
  FROM M_Storage_V s
  INNER JOIN AD_ORG ao         ON (s.AD_ORG_ID = ao.ad_org_id)
  INNER JOIN M_Product p       ON (s.M_Product_ID=p.M_Product_ID)
  LEFT JOIN zrv_product_pv pv  ON (p.m_product_id = pv.m_product_id) --PV
  INNER JOIN m_cost pc         ON (p.m_product_id = pc.m_product_id ) --PA
  LEFT JOIN Z_S_FAMILLE f      ON (p.z_s_famille_id = f.z_s_famille_id)
  LEFT JOIN z_gamme g          ON (p.z_gamme_id = g.z_gamme_id )
  WHERE (NVL(QtyOnHand,0) - NVL(QtyReserved,0)) < 0
  GROUP BY s.AD_Client_ID,
    s.AD_Org_ID ,
    p.value,
    NVL(f.name,' '),
    NVL(g.name,' ') ,
    NVL(pc.LASTCOSTPRICE,0),
    NVL(pv.pricestd,0);
--------------------------------------------------------
--  DDL for View ZRV_TRANSFEREDQTY
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ZRV_TRANSFEREDQTY" ("AD_CLIENT_ID", "AD_ORG_ID", "CREATED", "CREATEDBY", "UPDATED", "UPDATEDBY", "ISACTIVE", "ORGNAME_FROM", "PRODUCTVALUE", "QTY", "ORGNAME_TO") AS 
  SELECT 
    zq.AD_CLIENT_ID,
    zq.AD_ORG_ID,
    zq.CREATED,
    zq.CREATEDBY,
    zq.UPDATED,
    zq.UPDATEDBY,
    zq.ISACTIVE,
    org.name        as ORGNAME_FROM,
    p.value         as PRODUCTVALUE,
    zq.QTY          as QTY,
    org2.name       as ORGNAME_TO
    
  FROM Z_TransferedQty zq
  inner join m_product p on p.m_product_id = zq.m_product_id
  inner join ad_org org  on org.ad_org_id = zq.ad_org_id
  inner join ad_org org2 on org2.ad_org_id = zq.ad_orgto_id;
--------------------------------------------------------
--  DDL for View ZRV_UNDELIVERED
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ZRV_UNDELIVERED" ("AD_CLIENT_ID", "AD_ORG_ID", "DOCUMENTNO", "GRANDTOTAL", "VENDEUR", "DATEORDERED", "QTYORDERED", "QTYALIVRER", "VALUE") AS 
  SELECT o.AD_CLIENT_ID,
    o.ad_org_id,
    o.DOCUMENTNO,
    o.grandtotal,
    v.name AS vendeur,
    o.dateordered,
    l.qtyordered,
    l.qtyordered - l.qtydelivered AS qtyalivrer,
    p.value
  FROM C_ORDER o
  INNER JOIN c_orderline l
  ON l.c_order_id = o.c_order_id
  INNER JOIN m_product p
  ON l.m_product_id = p.m_product_id
  INNER JOIN AD_USER v
  ON o.salesrep_id = v.AD_USER_ID
  WHERE l.qtyordered - l.qtydelivered > 0
  AND o.issotrx = 'Y'
  AND o.isactive = 'Y';
--------------------------------------------------------
--  DDL for View ZRV_UNPAID
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ZRV_UNPAID" ("AD_CLIENT_ID", "AD_ORG_ID", "DOCUMENTNO", "DATEORDERED", "DATEPROMISED", "VALUE", "NAME", "GRANDTOTAL", "PAYE", "SOLDE", "QTYCOMMANDE", "QTYSOLDE", "ACOMPTE") AS 
  SELECT ord.ad_client_id,
    ord.ad_org_id,
    ord.documentno,
    ord.dateordered,
    ord.datepromised,
    bp.value,
    usr.name,
    ord.grandtotal,
    NVL(solde.paye,0)            AS paye,
    NVL(solde.solde,0)           AS solde,
    NVL(qty.totalqtyordered,0)   AS qtyCommande,
    NVL(qty.soldeqtydelivered,0) AS qtySolde,
    NVL(acompte.acompte,0)       AS acompte
  FROM c_order ord
  LEFT JOIN c_bpartner bp
  ON bp.c_bpartner_id = ord.c_bpartner_id
  AND bp.isactive     = 'Y'
  LEFT JOIN ad_user usr
  ON usr.ad_user_id = ord.salesrep_id
  AND usr.isactive  = 'Y'
    --paiement
  LEFT JOIN
    (SELECT o.c_order_id,
      NVL(SUM(p.payamt),0)                AS paye,
      (o.grandtotal-NVL(SUM(p.payamt),0)) AS solde
    FROM c_order o
    LEFT JOIN c_invoice i
    ON i.c_order_id = o.c_order_id
    AND i.isactive  = 'Y'
    LEFT JOIN c_payment p
    ON p.c_invoice_id = i.c_invoice_id
    AND p.isactive    = 'Y'
    WHERE o.isactive  = 'Y'
    GROUP BY o.c_order_id,
      o.grandtotal
    HAVING o.grandtotal        <> NVL(SUM(p.payamt),0)
    ) solde ON solde.c_order_id = ord.c_order_id
    -- quantitÃ?Â©
  LEFT JOIN
    (SELECT o.c_order_id,
      SUM(ol.qtyordered)                        AS totalqtyordered,
      SUM(ol.qtydelivered)                      AS totalqtydelivered,
      SUM(ol.qtyordered) - SUM(ol.qtydelivered) AS soldeqtydelivered
    FROM c_order o
    INNER JOIN c_orderline ol
    ON ol.c_order_id = o.c_order_id
    AND ol.isactive  = 'Y'
    WHERE o.isactive = 'Y'
    GROUP BY o.c_order_id
    ) qty ON qty.c_order_id = ord.c_order_id
    -- acompte
  LEFT JOIN
    (SELECT acc.c_order_id,
      pay.c_payment_id,
      pay.payamt AS acompte
    FROM c_payment pay
    INNER JOIN
      (SELECT o.c_order_id,
        o.documentno,
        COUNT(*)            AS nbrPayment,
        MIN(p.c_payment_id) AS c_payment_id
      FROM c_order o
      LEFT JOIN c_invoice i
      ON i.c_order_id = o.c_order_id
      AND i.isactive  = 'Y'
      LEFT JOIN c_payment p
      ON p.c_invoice_id = i.c_invoice_id
      AND p.isactive    = 'Y'
      WHERE o.isactive  = 'Y'
      GROUP BY o.c_order_id,
        o.documentno
      HAVING COUNT(*)               > 1
      AND MIN(p.c_payment_id)      IS NOT NULL
      ) acc ON acc.c_payment_id     = pay.c_payment_id
    ) acompte ON acompte.c_order_id = ord.c_order_id
  WHERE ord.DocStatus NOT          IN ('DR','IP','RE','VO')
  AND ord.isactive                  = 'Y';
--------------------------------------------------------
--  DDL for View ZRV_SALESTATS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ZRV_SALESTATS" ("AD_CLIENT_ID", "AD_ORG_ID", "M_PRODUCT_ID", "QTYORDERED", "PRODUIT", "Z_GAMME_ID", "GAMME", "Z_S_FAMILLE_ID", "FAMILLE", "INVOICEDDATE") AS 
  SELECT c_orderline.ad_client_id,
    c_orderline.ad_org_id,
    C_ORDERLINE.M_product_id,
    SUM(c_orderline.qtyordered) QtyOrdered,
    MAX (m_product.name)             AS produit,
    MAX (Z_gamme.Z_gamme_id)         AS z_gamme_id,
    MAX (z_gamme.description)        AS gamme,
    MAX (Z_S_famille.z_s_famille_id) AS z_s_famille_id,
    MAX (Z_S_FAMILLE.name)           AS famille,
    c_orderline.dateordered          AS invoiceddate
  FROM C_ORDER
  INNER JOIN C_orderline ON c_order.c_order_id = c_orderline.c_order_id
  INNER JOIN m_product   ON m_product.m_product_id = c_orderline.m_product_id
  INNER JOIN z_gamme     ON z_gamme.Z_gamme_id = m_product.z_gamme_id
  INNER JOIN z_s_famille ON z_s_famille.z_s_famille_id = m_product.z_s_famille_id
  WHERE c_order.issotrx='Y'
  GROUP BY c_orderline.ad_client_id,
    c_orderline.ad_org_id ,
    c_orderline.m_product_id,
    c_orderline.dateordered;
