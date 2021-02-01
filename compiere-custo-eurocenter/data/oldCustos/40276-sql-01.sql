CREATE OR REPLACE FORCE VIEW ZRV_CUTOFF (AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, C_INVOICE_ID, C_ORDER_ID, LINE, Z_CUTOFFAMT, C_BPARTNER_ID, QTYINVOICED, QTYDELIVERED)
AS
  SELECT vl.ad_client_id,
    vl.ad_org_id,
    vl.isactive,
    vl.created,
    vl.createdby,
    vl.updated,
    vl.updatedby,
    vl.c_invoice_id,
    o.c_order_id,
    vl.line,
    vl.z_cutoffamt,
    v.c_bpartner_id,
    ol.qtyinvoiced,
    ol.qtydelivered
  FROM c_invoiceline vl
  INNER JOIN c_orderline ol
  ON ol.c_orderline_id = vl.c_orderline_id
  INNER JOIN c_invoice v
  ON v.c_invoice_id = vl.c_invoice_id
  INNER JOIN c_order o
  ON o.c_order_id = ol.c_order_id
  WHERE vl.Z_CutOffAmt <> 0
  ORDER BY vl.c_invoice_id;
  /