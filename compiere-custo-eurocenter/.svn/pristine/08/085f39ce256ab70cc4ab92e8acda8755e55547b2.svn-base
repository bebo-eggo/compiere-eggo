CREATE OR REPLACE FORCE VIEW ZRV_REQ_TABLE (AD_CLIENT_ID, AD_ORG_ID, M_PRODUCT_ID, PRODUCTVALUE, DESCRIPTION, PRICESTD, QTYTOORDERED, QTYSTOCK, QTYAVAIL, QTYORDERED, QTYTRFT, M_PRODUCT_CATEGORY_ID, Z_S_FAMILLE_ID, Z_S_S_FAMILLE_ID, Z_S_S_S_FAMILLE_ID, Y_MARQUE_ID, Z_GAMME_ID, C_BPARTNER_ID)
AS
  SELECT mp.AD_Client_ID,
    ml.AD_Org_ID,
    mp.M_PRODUCT_ID,
    mp.Value AS productValue,
    mp.DESCRIPTION,
    getLastPromoPrice(1001036,mp.M_PRODUCT_ID,Sysdate, 'N')                     AS PRICESTD,
    0                                                                           AS QTYToOrdered,
    bomQtyOnHandByLocator(mp.M_Product_ID,ml.M_Locator_ID)                      AS QtyStock,
    bomQtyAvailableByLocator(mp.M_Product_ID,ml.M_Warehouse_ID,ml.M_Locator_ID) AS QtyAvail,
    bomQtyOrderedByLocator(mp.M_Product_ID,ml.M_Warehouse_ID,ml.M_Locator_ID)   AS QtyOrdered,
    getTRFTINOUTBYLOCATOR (ml.M_Locator_ID, mp.M_Product_ID, 0)                 AS QtyTRFT,
    mp.M_PRODUCT_CATEGORY_ID,
    mp.Z_S_FAMILLE_ID,
    mp.Z_S_S_FAMILLE_ID,
    mp.Z_S_S_S_FAMILLE_ID,
    mp.Y_MARQUE_ID,
    mp.Z_GAMME_ID,
    cb.C_BPARTNER_ID
  FROM M_Product mp
  INNER JOIN M_Locator ml
  ON ml.AD_Client_ID = mp.AD_CLIENT_ID
  AND ml.ISPOS       ='Y'
  INNER JOIN M_Product_PO mpo
  ON Mpo.M_Product_ID = mp.M_Product_ID
  AND mpo.isActive    = 'Y'
  INNER JOIN C_Bpartner Cb
  ON Cb.C_Bpartner_Id = Mpo.C_Bpartner_Id
  AND Cb.Isactive     = 'Y'
  WHERE mp.ISSTOCKED  = 'Y'
  And Mp.Ispurchased  = 'Y'
  AND mp.PRODUCTTYPE  = 'I';