CREATE OR REPLACE FORCE VIEW "ZRV_ORDERSOPOREF" ("AD_CLIENT_ID", "AD_ORG_ID", "CREATED", "CREATEDBY", "UPDATED", "UPDATEDBY", "ISACTIVE", "C_ORDER_ID", "REF_ORDER_ID", "C_BPARTNER_ID", "DELIVEREDSTATUS", "DATEORDERED", "DATEPROMISED", "GRANDTOTAL")
AS
  SELECT so.ad_client_id,
    so.ad_org_id,
    so.created,
    so.createdby,
    so.updated,
    so.updatedby,
    so.isactive,
    so.C_Order_ID,
    po.C_Order_ID AS ref_order_ID,
    po.C_BPartner_ID,
    (SELECT DECODE( SUM(qtyordered) - SUM(qtydelivered), 0, 'LIVREE', SUM(qtyordered) , 'NON LIVREE', 'PARTIELLEMENT')
    FROM c_orderline
    WHERE c_order_id = po.c_order_id
    ) AS TOTLIVREE,
    po.dateordered,
    po.datepromised,
    po.grandtotal
  FROM C_Order so
  INNER JOIN C_Order po
  ON po.ref_order_id = so.c_order_id
  WHERE so.issotrx   = 'Y';