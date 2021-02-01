
  CREATE OR REPLACE FORCE VIEW "ZRV_ORDERDETAIL2" ("AD_CLIENT_ID", "AD_ORG_ID", "ISACTIVE", "CREATED", "CREATEDBY", "UPDATED", "UPDATEDBY", "C_ORDER_ID", "DOCSTATUS", "DOCACTION", "C_DOCTYPE_ID", "ISAPPROVED", "ISCREDITAPPROVED", "SALESREP_ID", "BILL_BPARTNER_ID", "BILL_LOCATION_ID", "BILL_USER_ID", "ISDROPSHIP", "POREFERENCE", "C_CURRENCY_ID", "ISSOTRX", "C_BPARTNER_ID", "C_BPARTNER_LOCATION_ID", "AD_USER_ID", "C_BP_GROUP_ID", "C_CAMPAIGN_ID", "C_PROJECT_ID", "C_ACTIVITY_ID", "C_PROJECTPHASE_ID", "C_PROJECTTASK_ID", "C_ORDERLINE_ID", "DATEORDERED", "DATEPROMISED", "M_PRODUCT_ID", "M_WAREHOUSE_ID", "M_ATTRIBUTESETINSTANCE_ID", "PRODUCTATTRIBUTENAME", "M_ATTRIBUTESET_ID", "M_LOT_ID", "GUARANTEEDATE", "LOT", "SERNO", "M_PRODUCT_CATEGORY_ID", "C_UOM_ID", "QTYENTERED", "QTYORDERED", "QTYRESERVED", "QTYDELIVERED", "QTYINVOICED", "PRICEACTUAL", "PRICEENTERED", "QTYTODELIVER", "QTYTOINVOICE", "NETAMTTOINVOICE", "QTYLOSTSALES", "AMTLOSTSALES", "DISCOUNT", "MARGIN", "MARGINAMT", "ADDRESS1", "ADDRESS2", "CITY", "POSTAL", "C_REGION_ID", "C_COUNTRY_ID", "ISRETURNTRX", "LINENETAMT", "PRICEPO", "XX_SAV_DATE", "Z_GEO", "STOREPOPRICE") AS 
  SELECT l.AD_Client_ID                           AS AD_Client_ID,
    l.AD_Org_ID                                   AS AD_Org_ID,
    l.IsActive                                    AS IsActive,
    l.Created                                     AS Created,
    l.CreatedBy                                   AS CreatedBy,
    l.Updated                                     AS Updated,
    l.UpdatedBy                                   AS UpdatedBy,
    o.C_Order_ID                                  AS C_Order_ID,
    o.DocStatus                                   AS DocStatus,
    o.DocAction                                   AS DocAction,
    o.C_DocType_ID                                AS C_DocType_ID,
    o.IsApproved                                  AS IsApproved,
    o.IsCreditApproved                            AS IsCreditApproved,
    o.SalesRep_ID                                 AS SalesRep_ID,
    o.Bill_BPartner_ID                            AS Bill_BPartner_ID,
    o.Bill_Location_ID                            AS Bill_Location_ID,
    o.Bill_User_ID                                AS Bill_User_ID,
    o.IsDropShip                                  AS IsDropShip,
    o.POReference                                 AS POReference,
    o.C_Currency_ID                               AS C_Currency_ID,
    o.IsSOTrx                                     AS IsSOTrx,
    l.C_BPartner_ID                               AS C_BPartner_ID,
    l.C_BPartner_Location_ID                      AS C_BPartner_Location_ID,
    o.AD_User_ID                                  AS AD_User_ID,
    bp.C_BP_Group_ID                              AS C_BP_Group_ID,
    l.C_Campaign_ID                               AS C_Campaign_ID,
    l.C_Project_ID                                AS C_Project_ID,
    l.C_Activity_ID                               AS C_Activity_ID,
    l.C_ProjectPhase_ID                           AS C_ProjectPhase_ID,
    l.C_ProjectTask_ID                            AS C_ProjectTask_ID,
    l.C_OrderLine_ID                              AS C_OrderLine_ID,
    l.DateOrdered                                 AS DateOrdered,
    l.DatePromised                                AS DatePromised,
    l.M_Product_ID                                AS M_Product_ID,
    l.M_Warehouse_ID                              AS M_Warehouse_ID,
    l.M_AttributeSetInstance_ID                   AS M_AttributeSetInstance_ID,
    productAttribute(l.M_AttributeSetInstance_ID) AS ProductAttributeName,
    pasi.M_AttributeSet_ID                        AS M_AttributeSet_ID,
    pasi.M_Lot_ID                                 AS M_Lot_ID,
    pasi.GuaranteeDate                            AS GuaranteeDate,
    pasi.Lot                                      AS Lot,
    pasi.SerNo                                    AS SerNo,
    p.M_Product_Category_ID                       AS M_Product_Category_ID,
    l.C_UOM_ID                                    AS C_UOM_ID,
    CASE
      WHEN o.IsReturnTrx='Y'
      THEN l.QtyEntered*-1
      ELSE l.QtyEntered
    END AS QtyEntered,
    CASE
      WHEN o.IsReturnTrx='Y'
      THEN l.QtyOrdered*-1
      ELSE l.QtyOrdered
    END AS QtyOrdered,
    CASE
      WHEN o.IsReturnTrx='Y'
      THEN l.QtyReserved*-1
      ELSE l.QtyReserved
    END AS QtyReserved,
    CASE
      WHEN o.IsReturnTrx='Y'
      THEN l.QtyDelivered*-1
      ELSE l.QtyDelivered
    END AS QtyDelivered,
    CASE
      WHEN o.IsReturnTrx='Y'
      THEN l.QtyInvoiced*-1
      ELSE l.QtyInvoiced
    END            AS QtyInvoiced,
    l.PriceActual  AS PriceActual,
    l.PriceEntered AS PriceEntered,
    CASE
      WHEN o.IsReturnTrx='Y'
      THEN (l.QtyOrdered-l.QtyDelivered)*-1
      ELSE l.QtyOrdered -l.QtyDelivered
    END AS QtyToDeliver,
    CASE
      WHEN o.IsReturnTrx='Y'
      THEN (l.QtyOrdered-l.QtyInvoiced)*-1
      ELSE l.QtyOrdered -l.QtyInvoiced
    END AS QtyToInvoice,
    CASE
      WHEN o.IsReturnTrx='Y'
      THEN (l.QtyOrdered-l.QtyInvoiced)*l.PriceActual*-1
      ELSE (l.QtyOrdered-l.QtyInvoiced)*l.PriceActual
    END                          AS NetAmtToInvoice,
    l.QtyLostSales               AS QtyLostSales,
    l.QtyLostSales*l.PriceActual AS AmtLostSales,
    CASE
      WHEN PriceList=0
      THEN 0
      ELSE ROUND((PriceList-PriceActual)/PriceList*100,2)
    END AS Discount,
    CASE
      WHEN PriceLimit=0
      THEN 0
      ELSE ROUND((PriceActual-PriceLimit)/PriceLimit*100,2)
    END AS Margin,
    CASE
      WHEN PriceLimit=0
      THEN 0
      ELSE (
        CASE
          WHEN o.IsReturnTrx='Y'
          THEN (PriceActual-PriceLimit)*QtyDelivered*-1
          ELSE (PriceActual-PriceLimit)*QtyDelivered
        END)
    END              AS MarginAmt,
    loc.Address1     AS Address1,
    loc.Address2     AS Address2,
    loc.City         AS City,
    loc.Postal       AS Postal,
    loc.C_Region_ID  AS C_Region_ID,
    loc.C_Country_ID AS C_Country_ID,
    o.IsReturnTrx    AS IsReturnTrx,
    l.LineNetAmt     AS LineNetAmt,
    GETPRODUCTPRICE(l.M_Product_ID,o.AD_Client_ID, o.dateOrdered) as PricePO,
    o.XX_SAV_DatE,
    ao.Z_Geo,
    l.STOREPOPRICE
  FROM C_Order o
   inner join AD_Org ao on ao.AD_Org_ID = o.AD_Org_ID
  INNER JOIN C_OrderLine l
  ON (o.C_Order_ID=l.C_Order_ID)
  LEFT OUTER JOIN M_AttributeSetInstance pasi
  ON (l.M_AttributeSetInstance_ID=pasi.M_AttributeSetInstance_ID)
  INNER JOIN C_BPartner bp
  ON (bp.C_BPartner_ID = l.C_BPartner_ID)
  INNER JOIN C_BPartner_Location bpl
  ON (l.C_BPartner_Location_ID = bpl.C_BPartner_Location_ID)
  INNER JOIN C_Location loc
  ON (loc.C_Location_ID = bpl.C_Location_ID)
  INNER JOIN M_Product p
  ON (p.M_Product_ID = l.M_Product_ID);
/