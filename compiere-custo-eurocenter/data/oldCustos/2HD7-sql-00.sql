CREATE OR REPLACE  VIEW "ZRV_TRANSFEREDQTY" ("AD_CLIENT_ID", "AD_ORG_ID", "CREATED", "CREATEDBY", "UPDATED", "UPDATEDBY", "ISACTIVE", "MOVEMENTDATE", "TRANSITDATE", "DOCUMENTNO", "POREFERENCE", "ORG_FROM_ID", "ORGNAME_FROM", "PRODUCTVALUE", "M_PRODUCT_ID", "QTY", "ORG_TO_ID", "ORGNAME_TO", "ISINTRANSIT") AS
  SELECT mvl.AD_CLIENT_ID,
    mvl.AD_ORG_ID,
    mvl.CREATED,
    mvl.CREATEDBY,
    mvl.UPDATED,
    mvl.UPDATEDBY,
    mvl.ISACTIVE,
    mv.movementdate AS MOVEMENTDATE,
    mv.TRANSITDATE AS TRANSITDATE,
    mv.documentNo   AS DOCUMENTNO,
    mv.poreference  AS POREFERENCE,
    mvl.ad_org_id   AS ORG_FROM_ID,
    org.name        AS ORGNAME_FROM,
    p.value         AS PRODUCTVALUE,
    p.M_Product_ID AS M_PRODUCT_ID,
    mvl.movementqty AS QTY,
    org2.ad_org_id  AS ORG_TO_ID,
    org2.name       as orgname_to,
    mv.isintransit
  FROM m_movementline mvl
  INNER JOIN m_product p
  ON mvl.m_product_id =p.m_product_id
  INNER JOIN m_movement mv
  ON mv.m_movement_id =mvl.m_movement_id
  INNER JOIN c_doctype c_doc
  ON (c_doc.c_doctype_id = mv.c_doctype_id
  AND c_doc.isInTransit  ='Y')
  INNER JOIN ad_org org
  ON org.ad_org_id = mvl.ad_org_id
  INNER JOIN m_warehouse mw
  ON mw.m_warehouse_id = mvl.m_warehouseto_id
  INNER JOIN ad_org org2
  on org2.ad_org_id  = mw.ad_org_id
  WHERE mv.docstatus ='IP'
 ;
CREATE OR REPLACE  VIEW "ZRV_LISTSTOCK" ("AD_CLIENT_ID", "AD_ORG_ID", "M_PRODUCT_ID", "REF_PRODUCT", "PRODUCT","DESCRIPTION", "QTYONHAND", "QTYRESERVED", "QTYAVAILABLE", "M_PRODUCT_CATEGORY_ID", "Z_S_FAMILLE_ID", "Z_S_S_FAMILLE_ID", "Z_S_S_S_FAMILLE_ID", "Z_GAMME_ID", "M_WAREHOUSE_ID", "Y_MARQUE_ID", "GAMMENAME", "PV", "PVPROMO", "VALIDFROM", "VALIDTO", "QTY_COMM_MAG", "QTY_COMM_CENTRAL", "QTY_TRANSFERED", "STOCK_POSITIF") AS
  SELECT distinct p.AD_Client_ID       AS AD_Client_ID,
    w.AD_Org_ID               AS AD_Org_ID,
    p.M_Product_ID            AS M_Product_ID,    
    p.Value                   AS REF_PRODUCT,
    p.Name                    AS Product,
    p.description             AS Description,
    bomQtyOnHandByLocator(p.M_Product_ID,l.M_Locator_ID)              AS QtyOnHand,
    bomQtyReservedByLocator(p.M_Product_ID,w.M_Warehouse_ID,l.M_Locator_ID)              AS QtyReserved,
    bomQtyAvailableByLocator(p.M_Product_ID,w.M_Warehouse_ID,l.M_Locator_ID) AS QtyAvailable,
    p.m_product_category_id,
    p.z_s_famille_id,
    p.z_s_s_famille_id,
    p.z_s_s_s_famille_id,
    p.z_gamme_id,
    w.M_warehouse_ID,
    p.y_marque_id,
    NVL(g.name,' ')  AS GammeName,
    pprice.PriceStd  AS PV,
    pprice2.PriceStd AS PVPRomo,
    mpv2.ValidFrom,
    mpv2.ValidTo,
    GETQTYCOMMBYWAREHOUSE(rv.M_Warehouse_ID,p.M_Product_ID) as Qty_comm_mag,
    GETQTYCOMMBYWAREHOUSE(1000813,p.M_Product_ID) as Qty_comm_central,
    (select (NVL(sum(tr.QTY),0)) from ZRV_TRansferedQTY tr where tr.ORG_TO_ID = w.AD_ORG_ID and tr.M_PRODUCT_ID = p.M_PRODUCT_ID ) as Qty_transfered,
        Case
        WHEN  (bomQtyOnHandByLocator(p.M_Product_ID,l.M_Locator_ID) > 0)
        then 'Y'
        else 'N'
    end as "STOCK_POSITIF"
  FROM M_Product p
  INNER JOIN M_Warehouse w ON (w.AD_Client_ID = p.AD_Client_ID AND w.IsActive='Y')
INNER JOIN M_locator l on (l.M_Warehouse_id = w.M_Warehouse_id and l.IsActive='Y' AND ZISINFOPRODUCTVISIBLE='Y')
  INNER JOIN RV_Stock_Available rv ON (rv.M_Product_ID = p.M_Product_ID AND  rv.M_Warehouse_ID = w.M_warehouse_ID AND rv.M_Locator_ID = l.M_Locator_ID)
  left JOIN M_Productprice pprice
  ON pprice.M_Product_ID           = p.m_product_id
   AND pprice.M_PRICELIST_VERSION_ID=getStdVersionPrice(1001036,p.M_PRODUCT_ID,sysdate)
  LEFT JOIN m_pricelist_version mpv2
  ON mpv2.M_PRICELIST_VERSION_ID = GETPROMOVERSION(1001036, p.M_Product_ID,sysdate)
  LEFT JOIN M_Productprice pprice2
  ON pprice2.M_Product_ID         = p.m_product_id
  AND mpv2.M_PRICELIST_VERSION_ID=pprice2.M_PRICELIST_VERSION_ID
  LEFT JOIN z_gamme g
  ON (p.z_gamme_id = g.z_gamme_id)
  where --(bomQtyOnHandByLocator(p.M_Product_ID,l.M_Locator_ID)) !=0 and
  p.ISSTOCKED = 'Y'
  and p.M_PRODUCT_CATEGORY_ID != 1000756
  and p.ISACTIVE ='Y'
 ;
  