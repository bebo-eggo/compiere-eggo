CREATE OR REPLACE FORCE VIEW "ZRV_PRICELIST_PLV" ("AD_CLIENT_ID", "AD_ORG_ID", "M_PRODUCT_ID", "PRODUCTVALUE", "PRODUCTNAME", "M_PRICELIST_ID", "PRICELISTNAME", "M_PRICELIST_VERSION_ID", "PRICELISTVERSIONNAME", "VALIDFROM", "VALIDTO", "PRICESTD") AS 
  SELECT p.ad_client_id        AS AD_CLIENT_ID,
  p.ad_org_id                AS AD_ORG_ID,
  p.m_product_id             AS M_PRODUCT_ID,
  p.value                    AS PRODUCTVALUE,
  p.name                     AS PRODUCTNAME,
  pl.m_pricelist_id          AS M_PRICELIST_ID,
  pl.name                    AS PRICELISTNAME,
  plv.m_pricelist_version_id AS M_PRICELIST_VERSION_ID,
  plv.name                   AS PRICELISTVERSIONNAME,
  TRUNC(plv.validfrom)       AS VALIDFROM,
  TRUNC(plv.validto)         AS VALIDTO,
  pp.pricestd                AS PRICESTD
FROM m_product p
INNER JOIN m_productprice pp
ON p.m_product_id = pp.m_product_id
AND pp.isactive   = 'Y'
INNER JOIN m_pricelist_version plv
ON plv.m_pricelist_version_id = pp.m_pricelist_version_id
AND plv.isactive              = 'Y'
INNER JOIN m_pricelist pl
ON pl.m_pricelist_id = plv.m_pricelist_id
AND pl.isactive      = 'Y' 
WHERE p.isactive     = 'Y' and plv.m_pricelist_version_id = getPriceListLastVersionPrice(pl.M_PRICELIST_ID,p.M_Product_ID, sysdate);
update AD_TAB SET WHERECLAUSE = 'C_BPartner_Location.IsEggo=''Y'' ' where AD_TAB_ID = 1000335;