CREATE OR REPLACE FORCE VIEW "RV_INOUTDETAILS_EC" ("AD_CLIENT_ID", "AD_ORG_ID", "ISACTIVE", "CREATED", "CREATEDBY", "UPDATED", "UPDATEDBY", "M_INOUT_ID", "ISSOTRX", "DOCUMENTNO", "DOCACTION", "DOCSTATUS", "POSTED", "PROCESSED", "C_DOCTYPE_ID", "DESCRIPTION", "C_ORDER_ID", "DATEORDERED", "MOVEMENTTYPE", "MOVEMENTDATE", "DATEACCT", "C_BPARTNER_ID", "C_BPARTNER_LOCATION_ID", "AD_USER_ID", "SALESREP_ID", "M_WAREHOUSE_ID", "POREFERENCE", "DELIVERYRULE", "FREIGHTCOSTRULE", "FREIGHTAMT", "DELIVERYVIARULE", "M_SHIPPER_ID", "PRIORITYRULE", "DATEPRINTED", "NOPACKAGES", "PICKDATE", "SHIPDATE", "TRACKINGNO", "AD_ORGTRX_ID", "C_PROJECT_ID", "C_CAMPAIGN_ID", "C_ACTIVITY_ID", "USER1_ID", "USER2_ID", "DATERECEIVED", "ISAPPROVED", "ISINDISPUTE", "M_INOUTLINE_ID", "LINE", "LINEDESCRIPTION", "C_ORDERLINE_ID", "M_LOCATOR_ID", "M_PRODUCT_ID", "C_UOM_ID", "M_ATTRIBUTESETINSTANCE_ID", "PRODUCTATTRIBUTENAME", "M_ATTRIBUTESET_ID", "M_LOT_ID", "GUARANTEEDATE", "LOT", "SERNO", "MOVEMENTQTY",
  "QTYENTERED", "ISDESCRIPTION", "CONFIRMEDQTY", "PICKEDQTY", "SCRAPPEDQTY", "TARGETQTY", "LOCATORVALUE", "X", "Y", "Z", "ISRETURNTRX","SOREFERENCE","NOM","PRENOM","PHONE","PHONE2")
                                                AS
  SELECT h.AD_Client_ID                           AS AD_Client_ID,
    h.AD_Org_ID                                   AS AD_Org_ID,
    l.IsActive                                    AS IsActive,
    l.Created                                     AS Created,
    l.CreatedBy                                   AS CreatedBy,
    l.Updated                                     AS Updated,
    l.UpdatedBy                                   AS UpdatedBy,
    h.M_InOut_ID                                  AS M_InOut_ID,
    h.IsSOTrx                                     AS IsSOTrx,
    h.DocumentNo                                  AS DocumentNo,
    h.DocAction                                   AS DocAction,
    h.DocStatus                                   AS DocStatus,
    h.Posted                                      AS Posted,
    h.Processed                                   AS Processed,
    h.C_DocType_ID                                AS C_DocType_ID,
    h.Description                                 AS Description,
    h.C_Order_ID                                  AS C_Order_ID,
    h.DateOrdered                                 AS DateOrdered,
    h.MovementType                                AS MovementType,
    h.MovementDate                                AS MovementDate,
    h.DateAcct                                    AS DateAcct,
    h.C_BPartner_ID                               AS C_BPartner_ID,
    h.C_BPartner_Location_ID                      AS C_BPartner_Location_ID,
    h.AD_User_ID                                  AS AD_User_ID,
    h.SalesRep_ID                                 AS SalesRep_ID,
    h.M_Warehouse_ID                              AS M_Warehouse_ID,
    h.POReference                                 AS POReference,
    h.DeliveryRule                                AS DeliveryRule,
    h.FreightCostRule                             AS FreightCostRule,
    h.FreightAmt                                  AS FreightAmt,
    h.DeliveryViaRule                             AS DeliveryViaRule,
    h.M_Shipper_ID                                AS M_Shipper_ID,
    h.PriorityRule                                AS PriorityRule,
    h.DatePrinted                                 AS DatePrinted,
    h.NoPackages                                  AS NoPackages,
    h.PickDate                                    AS PickDate,
    h.ShipDate                                    AS ShipDate,
    h.TrackingNo                                  AS TrackingNo,
    h.AD_OrgTrx_ID                                AS AD_OrgTrx_ID,
    h.C_Project_ID                                AS C_Project_ID,
    h.C_Campaign_ID                               AS C_Campaign_ID,
    h.C_Activity_ID                               AS C_Activity_ID,
    h.User1_ID                                    AS User1_ID,
    h.User2_ID                                    AS User2_ID,
    h.DateReceived                                AS DateReceived,
    h.IsApproved                                  AS IsApproved,
    h.IsInDispute                                 AS IsInDispute,
    l.M_InOutLine_ID                              AS M_InOutLine_ID,
    l.Line                                        AS Line,
    l.Description                                 AS LineDescription,
    l.C_OrderLine_ID                              AS C_OrderLine_ID,
    l.M_Locator_ID                                AS M_Locator_ID,
    l.M_Product_ID                                AS M_Product_ID,
    l.C_UOM_ID                                    AS C_UOM_ID,
    l.M_AttributeSetInstance_ID                   AS M_AttributeSetInstance_ID,
    productAttribute(l.M_AttributeSetInstance_ID) AS ProductAttributeName,
    pasi.M_AttributeSet_ID                        AS M_AttributeSet_ID,
    pasi.M_Lot_ID                                 AS M_Lot_ID,
    pasi.GuaranteeDate                            AS GuaranteeDate,
    pasi.Lot                                      AS Lot,
    ovl.SerNo                                    AS SerNo,
    CASE
      WHEN h.IsReturnTrx='Y'
      THEN l.MovementQty*-1
      ELSE l.MovementQty
    END AS MovementQty,
    CASE
      WHEN h.IsReturnTrx='Y'
      THEN l.QtyEntered*-1
      ELSE l.QtyEntered
    END             AS QtyEntered,
    l.IsDescription AS IsDescription,
    CASE
      WHEN h.IsReturnTrx='Y'
      THEN l.ConfirmedQty*-1
      ELSE l.ConfirmedQty
    END AS ConfirmedQty,
    CASE
      WHEN h.IsReturnTrx='Y'
      THEN l.PickedQty*-1
      ELSE l.PickedQty
    END AS PickedQty,
    CASE
      WHEN h.IsReturnTrx='Y'
      THEN l.ScrappedQty*-1
      ELSE l.ScrappedQty
    END AS ScrappedQty,
    CASE
      WHEN h.IsReturnTrx='Y'
      THEN l.TargetQty*-1
      ELSE l.TargetQty
    END           AS TargetQty,
    loc.Value     AS LocatorValue,
    loc.X         AS X,
    loc.Y         AS Y,
    loc.Z         AS Z,
    h.IsReturnTrx AS IsReturnTrx,
    o.documentno  AS SOREFERENCE,
    bp.name       AS PRENOM,
    bp.name2      AS NOM,
    u.phone,
    u.phone2
  FROM M_InOut h
  INNER JOIN M_InOutLine l
  ON (h.M_InOut_ID=l.M_InOut_ID)
  INNER JOIN M_RequisitionLine rl
  ON (l.C_Orderline_ID = rl.C_Orderline_ID)
  INNER JOIN M_Requisition r
  ON (r.M_Requisition_ID = rl.M_Requisition_ID)
  INNER JOIN C_Order o
  ON (r.description = o.documentno)
  INNER JOIN C_OrderLine ovl
  ON (ovl.c_order_id = o.c_order_id and ovl.m_product_id = l.m_product_id)
  INNER JOIN C_BPartner bp
  ON (bp.c_bpartner_id = o.c_bpartner_id)
  INNER JOIN AD_User u
  ON (bp.c_bpartner_id = u.c_bpartner_id)
  LEFT OUTER JOIN M_Locator loc
  ON (l.M_Locator_ID=loc.M_Locator_ID)
  LEFT OUTER JOIN M_AttributeSetInstance pasi
  ON (l.M_AttributeSetInstance_ID=pasi.M_AttributeSetInstance_ID)
WHERE ovl.qtyinprocess < 1;

select  from c_order;