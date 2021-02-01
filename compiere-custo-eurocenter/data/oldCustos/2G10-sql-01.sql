CREATE OR REPLACE FORCE VIEW "ZRV_STOCKNEC24" ("AD_CLIENT_ID", "AD_ORG_ID", "CREATED", "CREATEDBY", "ISACTIVE", "UPDATED", "UPDATEDBY", "MAGASIN", "M_PRODUCT_ID", "VALUE", "QTYAVAILBLE")
AS
  SELECT DISTINCT pl.ad_client_id,
    pl.ad_org_id,
    pl.created,
    pl.createdby,
    pl.isactive,
    pl.updated,
    pl.updatedby,
    (SELECT name
    FROM ad_org
    WHERE ad_org_id =
      (SELECT msgtext FROM ad_message WHERE value LIKE 'KM_NEC24_ORGFROM'
      )
    ) AS magasin,
    p.m_product_id,
    p.value,
    bomqtyavailablebylocator( p.m_product_id ,
    (SELECT m_warehouse_id
    FROM ad_orginfo
    WHERE ad_org_id =
      (SELECT msgtext FROM ad_message WHERE value LIKE 'KM_NEC24_ORGFROM'
      )
    ),
    (SELECT m_locator_id
    FROM m_locator
    WHERE m_warehouse_id =
      (SELECT m_warehouse_id
      FROM ad_orginfo
      WHERE ad_org_id =
        (SELECT msgtext FROM ad_message WHERE value LIKE 'KM_NEC24_ORGFROM'
        )
      )
    AND isdefault        ='Y'
    AND Z_LocatorType_ID =
      (SELECT z_locatortype_id
      FROM z_locatortype
      WHERE z_locatortype.ISSTANDARDTYPE = 'Y' and z_locatortype.AD_client_ID = m_locator.AD_client_ID
      )
    ) ) AS QtyAvailble
  FROM m_product p
  INNER JOIN M_ProductPrice pp
  ON (pp.m_product_id = p.m_product_id)
  INNER JOIN m_pricelist_version plv
  ON (plv.m_pricelist_version_id = pp.m_pricelist_version_id)
  INNER JOIN m_pricelist pl
  ON ( pl.m_pricelist_id  = plv.m_pricelist_id )
  WHERE pl.m_pricelist_id =
    ( SELECT msgtext FROM ad_message WHERE value LIKE 'KM_NEC24_PRICELIST'
    )
  ORDER BY p.value;
  /