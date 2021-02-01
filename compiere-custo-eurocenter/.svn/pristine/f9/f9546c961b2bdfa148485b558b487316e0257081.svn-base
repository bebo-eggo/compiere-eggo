CREATE OR REPLACE FORCE VIEW "ZRV_STOCKNEC24" ("AD_CLIENT_ID", "AD_ORG_ID", "CREATED", "CREATEDBY", "ISACTIVE", "UPDATED", "UPDATEDBY", "MAGASIN", "M_PRODUCT_ID", "VALUE", "QTYAVAILBLE")
AS
WITH Product AS (Select pp.M_PRODUCT_ID, (SELECT TO_NUMBER(msgtext) FROM ad_message WHERE value LIKE 'KM_NEC24_ORGFROM'
      )as AD_Org_ID, PP.AD_Client_ID from M_ProductPrice pp
INNER JOIN m_pricelist_version plv
  ON (plv.m_pricelist_version_id = pp.m_pricelist_version_id
  and plv.m_pricelist_id =
    ( SELECT TO_NUMBER(msgtext) FROM ad_message WHERE value LIKE 'KM_NEC24_PRICELIST'
    ))
    group by pp.M_PRODUCT_ID,PP.AD_Client_ID)
Select mp.AD_Client_ID,mp.AD_Org_ID,
mp.created,
mp.createdby,
mp.isactive,
mp.updated,
mp.updatedby, ao.Name as MAGASIN, mp.M_PRODUCT_ID, mp.Value,    bomqtyavailablebylocator( mp.m_product_id ,
    (SELECT m_warehouse_id
    FROM ad_orginfo
    WHERE ad_org_id = Product.AD_Org_ID
    ),
    (SELECT m_locator_id
    FROM m_locator
    WHERE m_warehouse_id =
      (SELECT m_warehouse_id
      FROM ad_orginfo
      WHERE ad_org_id = Product.AD_Org_ID
      )
    AND isdefault        ='Y'
    AND Z_LocatorType_ID =
      (SELECT z_locatortype_id
      FROM z_locatortype
      WHERE z_locatortype.ISSTANDARDTYPE = 'Y' and z_locatortype.AD_client_ID = m_locator.AD_client_ID
      )
    ) ) AS QtyAvailble from M_Product mp,Product
    inner join AD_Org ao on ao.AD_Org_ID = Product.AD_Org_ID
where Product.M_PRODUCT_ID = mp.M_PRODUCT_ID and Product.AD_Client_ID=mp.AD_Client_ID;
/