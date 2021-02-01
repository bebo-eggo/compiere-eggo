CREATE OR REPLACE FORCE VIEW "RV_STORAGE" ("AD_CLIENT_ID", "AD_ORG_ID", "M_PRODUCT_ID", "VALUE", "NAME", "DESCRIPTION", "UPC", "SKU", "C_UOM_ID", "M_PRODUCT_CATEGORY_ID", "CLASSIFICATION", "WEIGHT", "VOLUME", "VERSIONNO", "GUARANTEEDAYS", "GUARANTEEDAYSMIN", "M_LOCATOR_ID", "M_WAREHOUSE_ID", "X", "Y", "Z", "POSITION", "BIN", "QTYONHAND", "QTYRESERVED", "QTYAVAILABLE", "QTYDEDICATED", "QTYALLOCATED", "FULLYALLOCATED", "QTYORDERED", "DATELASTINVENTORY", "M_ATTRIBUTESETINSTANCE_ID", "M_ATTRIBUTESET_ID", "SERNO", "LOT", "M_LOT_ID", "GUARANTEEDATE", "SHELFLIFEDAYS", "GOODFORDAYS", "SHELFLIFEREMAININGPCT")
as
  SELECT s.AD_Client_ID                                                        AS AD_Client_ID,
    s.AD_Org_ID                                                                AS AD_Org_ID,
    s.M_Product_ID                                                             AS M_Product_ID,
    p.Value                                                                    AS Value,
    p.Name                                                                     AS Name,
    p.Description                                                              AS Description,
    p.UPC                                                                      AS UPC,
    p.SKU                                                                      AS SKU,
    p.C_UOM_ID                                                                 AS C_UOM_ID,
    p.M_Product_Category_ID                                                    AS M_Product_Category_ID,
    p.Classification                                                           AS Classification,
    p.Weight                                                                   AS Weight,
    p.Volume                                                                   AS Volume,
    p.VersionNo                                                                AS VersionNo,
    p.GuaranteeDays                                                            AS GuaranteeDays,
    p.GuaranteeDaysMin                                                         AS GuaranteeDaysMin,
    s.M_Locator_ID                                                             AS M_Locator_ID,
    l.M_Warehouse_ID                                                           AS M_Warehouse_ID,
    l.X                                                                        AS X,
    l.Y                                                                        AS Y,
    l.Z                                                                        AS Z,
    l.Position                                                                 AS Position,
    l.Bin                                                                      AS Bin,
    s.QtyOnHand                                                                AS QtyOnHand,
    s.QtyReserved                                                              AS QtyReserved,
    s.QtyOnHand-s.QtyReserved-s.QtyDedicated-s.QtyAllocated                    AS QtyAvailable,
    s.QtyDedicated                                                             AS QtyDedicated,
    s.QtyAllocated                                                             AS QtyAllocated,
    s.QtyDedicated+s.QtyAllocated                                              AS FullyAllocated,
    s.QtyOrdered                                                               AS QtyOrdered,
    s.DateLastInventory                                                        AS DateLastInventory,
    s.M_AttributeSetInstance_ID                                                AS M_AttributeSetInstance_ID,
    asi.M_AttributeSet_ID                                                      AS M_AttributeSet_ID,
    asi.SerNo                                                                  AS SerNo,
    asi.Lot                                                                    AS Lot,
    asi.M_Lot_ID                                                               AS M_Lot_ID,
    asi.GuaranteeDate                                                          AS GuaranteeDate,
    getDaysBetween(asi.GuaranteeDate,GETDATE())                                AS ShelfLifeDays,
    getDaysBetween(asi.GuaranteeDate,GETDATE())       -p.GuaranteeDaysMin      AS GoodForDays,
    case 
    when (p.GuaranteeDays <> 0) then
      ROUND((getDaysBetween(asi.GuaranteeDate,GETDATE())/p.GuaranteeDays)*100,0) 
    else 0
    end AS ShelfLifeRemainingPct
  FROM M_Storage_V s
  INNER JOIN M_Locator l
  ON (s.M_Locator_ID=l.M_Locator_ID)
  INNER JOIN M_Product p
  ON (s.M_Product_ID=p.M_Product_ID)
  LEFT OUTER JOIN M_AttributeSetInstance asi
  ON (s.M_AttributeSetInstance_ID=asi.M_AttributeSetInstance_ID);
