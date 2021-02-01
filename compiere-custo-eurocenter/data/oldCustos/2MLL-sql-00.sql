
  CREATE OR REPLACE FORCE VIEW "Z_INTRASTATLINE" ("AD_CLIENT_ID", "AD_ORG_ID", "ISACTIVE", "CREATED", "UPDATED", "CREATEDBY", "UPDATEDBY", "DATEINVOICED", "Z_REGIMESTAT", "Z_NATTRANS", "Z_INCOTERM", "TAXID", "CTRY_FROM", "CTRY_TO", "REGION_FROM", "REGION_TO", "TRANSPORT_MODE", "COMMODITYCODE", "LINENETAMT", "LINESTATAMT", "QTYINVOICED", "WEIGHT", "C_CURRENCY_ID", "Z_TVAAENCAISSEMENT_ID", "C_INVOICELINE_ID") AS 
  SELECT i.ad_client_id,
    i.ad_org_id,
    'Y' AS isactive,
    zl.created,
    zl.updated,
    zl.createdby,
    zl.updatedby,
    TO_CHAR(i.dateacct,'YYYYMM') AS dateinvoiced,
    CASE
      WHEN (i.issotrx = 'N' and NVL(il.LineNetAmt,0)>=0 )THEN 'A'
      WHEN (i.issotrx = 'N' and NVL(il.LineNetAmt,0)<0 )THEN 'D'
      WHEN (i.issotrx = 'Y' and NVL(il.LineNetAmt,0)>=0 )THEN 'D'
      WHEN (i.issotrx = 'Y' and NVL(il.LineNetAmt,0)<0 )THEN 'A'
      ELSE 'D'
    END AS Z_Regimestat,
    CASE
      WHEN NVL(il.LineNetAmt,0) < 0
      THEN '2'
      ELSE '1'
    END AS Z_nattrans_a,
    CASE
      WHEN NVL(msg.msgtext,'Y') = 'Y'
      THEN NVL(inc.Name,'CFR')
      ELSE NULL
    END      AS incoterm,
    oi.TaxID AS taxid_from,
    CASE
      WHEN (i.issotrx = 'Y')
      THEN oi_c.countrycode
      ELSE c.countrycode
    END AS ctry_from,
    CASE
      WHEN (i.issotrx = 'N')
      THEN oi_c.countrycode
      ELSE c.countrycode
    END AS ctry_to,
    CASE
      WHEN (i.issotrx = 'Y')
      THEN oi.regionname
      ELSE NULL
    END AS region_from,
    CASE
      WHEN (i.issotrx = 'N')
      THEN oi.regionname
      ELSE NULL
    END AS region_to,
    CASE
      WHEN NVL(msg.msgtext,'Y') = 'Y'
      THEN NVL(Bpl.Z_Transportmode,'3')
      ELSE NULL
    END            AS transport_mode,
    p.codedouanier AS commoditycode,
    il.LineNetAmt,
    ABS(ROUND(NVL(CurrencyConvert(il.LineNetAmt, i.C_Currency_ID, NVL(ao.C_Currency_ID,a.C_Currency_ID) , i.DateAcct, i.C_ConversionType_ID, i.ad_client_id, i.ad_org_id),0),2)) AS linestatamt,
    ABS(ROUND(NVL(il.QTYINVOICED,0)))                                                                                                                                            AS qtyinvoiced,
    ABS(ROUND(NVL(il.QTYINVOICED,0))) * p.weight                                                                                                                                 AS weight,
    curr.c_currency_id,
    Zl.Z_Tvaaencaissement_Id,
    zl.c_invoiceline_id
  FROM Z_Tvaaencaissline zl
  INNER JOIN c_invoiceline il
  ON il.c_invoiceline_id = zl.c_invoiceline_id
  INNER JOIN C_INVOICE i
  ON il.C_Invoice_ID = i.C_Invoice_ID
  INNER JOIN C_CURRENCY curr
  ON curr.c_currency_id = i.c_currency_id
  LEFT OUTER JOIN M_INOUTLINE iol
  ON il.M_InOutLine_ID = iol.M_InOutLine_ID
  LEFT OUTER JOIN M_INOUT io
  ON io.m_inout_id = iol.m_inout_id
  INNER JOIN AD_ORGINFO oi
  ON i.AD_Org_ID = oi.AD_Org_ID
  INNER JOIN AD_ORG o
  ON o.AD_Org_ID = oi.AD_Org_ID
  INNER JOIN C_LOCATION oi_loc
  ON oi_loc.C_Location_ID = oi.C_Location_ID
  INNER JOIN C_COUNTRY oi_c
  ON oi_loc.C_country_ID = oi_c.C_country_ID
  INNER JOIN ad_clientinfo cliinfo
  ON cliinfo.ad_client_id = il.ad_client_id
  INNER JOIN C_acctschema a
  ON a.c_acctschema_id = cliinfo.c_acctschema1_id
  LEFT OUTER JOIN C_Acctschema ao
  ON ao.ad_orgonly_id = i.ad_org_id
  INNER JOIN c_currency currbase
  ON currbase.c_currency_id = NVL(ao.c_currency_id, a.c_currency_id)
  INNER JOIN C_BPARTNER bp
  ON i.C_BPartner_ID = bp.C_BPartner_ID
  INNER JOIN C_BPARTNER_LOCATION bpl
  ON i.C_BPartner_Location_ID = bpl.C_BPartner_Location_ID
  LEFT OUTER JOIN Z_INCOTERMS inc
  ON bpl.Z_Incoterms_ID = inc.Z_Incoterms_ID
  INNER JOIN C_LOCATION loc
  ON bpl.C_Location_ID = loc.C_Location_ID
  INNER JOIN C_COUNTRY c
  ON c.C_Country_ID = loc.C_Country_ID
  INNER JOIN M_PRODUCT p
  ON p.M_Product_ID = il.M_Product_ID
  INNER JOIN c_tax tx
  ON tx.c_tax_id = zl.c_tax_id
  LEFT OUTER JOIN ad_message msg
  ON msg.value          = 'AUDAXIS_INTRASTAT_FULL'
  WHERE tx.Z_intrastat  = 'Y'
  AND oi_c.countrycode <> c.countrycode;
/