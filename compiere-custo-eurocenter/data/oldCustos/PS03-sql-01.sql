--
--
--
--
-- VUE POUR DOCUMENT DE VENTE JASPER DB CENTRALE
--
--
--
--
--
CREATE OR REPLACE FORCE VIEW RV_PrintTicketPartner ("ORDER_ID","NAME","VALUE","FIRSTNAME","PHONE","PHONE2","EMAIL","TAXID","GREETING","SHIP_NAME","SHIP_ADDRESS1","SHIP_ADDRESS2","SHIP_NUMBER","SHIP_BOX","SHIP_POSTAL","SHIP_CITY","SHIP_COUNTRY","INV_ADDRESS1","INV_ADDRESS2","INV_NUMBER","INV_BOX","INV_POSTAL","INV_CITY","INV_COUNTRY","BPID")
                                                     AS
select  o.c_order_id   AS ORDER_ID,
        usr.name           AS NAME,
        bp.value          AS VALUE,
        usr.name2          AS FIRSTNAME,
        usr.phone          AS PHONE,
        usr.phone2         AS PHONE2,
        usr.email          AS EMAIL,
        bp.taxid          AS TAXID,
        g.name            AS GREETING,
        (SELECT MAX(name)
    FROM c_bpartner_location
    WHERE c_bpartner_id=bp.c_bpartner_id
    AND isshipto       ='Y'
    ) AS SHIP_NAME,
    (SELECT MAX(Address1)
    FROM c_location
    WHERE c_location_id IN
      (SELECT MAX(c_location_id)
      FROM c_bpartner_location
      WHERE c_bpartner_id=bp.c_bpartner_id
      AND isshipto       ='Y'
      )
    ) AS SHIP_ADDRESS1,
    (SELECT MAX(Address2)
    FROM c_location
    WHERE c_location_id IN
      (SELECT MAX(c_location_id)
      FROM c_bpartner_location
      WHERE c_bpartner_id=bp.c_bpartner_id
      AND isshipto       ='Y'
      )
    ) AS SHIP_ADDRESS2,
    (SELECT MAX(Address3)
    FROM c_location
    WHERE c_location_id IN
      (SELECT MAX(c_location_id)
      FROM c_bpartner_location
      WHERE c_bpartner_id=bp.c_bpartner_id
      AND isshipto       ='Y'
      )
    ) AS SHIP_ADDRESS3,
    (SELECT MAX(Address4)
    FROM c_location
    WHERE c_location_id IN
      (SELECT MAX(c_location_id)
      FROM c_bpartner_location
      WHERE c_bpartner_id=bp.c_bpartner_id
      AND isshipto       ='Y'
      )
    ) AS SHIP_ADDRESS4,
    (SELECT MAX(postal)
    FROM c_location
    WHERE c_location_id IN
      (SELECT MAX(c_location_id)
      FROM c_bpartner_location
      WHERE c_bpartner_id=bp.c_bpartner_id
      AND isshipto       ='Y'
      )
    ) AS SHIP_POSTAL,
    (SELECT MAX(City)
    FROM c_location
    WHERE c_location_id IN
      (SELECT MAX(c_location_id)
      FROM c_bpartner_location
      WHERE c_bpartner_id=bp.c_bpartner_id
      AND isshipto       ='Y'
      )
    ) AS SHIP_CITY,
    (SELECT MAX(name)
    FROM C_Country
    WHERE c_country_id IN
      (SELECT c_country_id
      FROM c_location
      WHERE c_location_id IN
        (SELECT MAX(c_location_id)
        FROM c_bpartner_location
        WHERE c_bpartner_id=bp.c_bpartner_id
        AND isshipto       ='Y'
        )
      )
    ) AS SHIP_COUNTRY,
    (SELECT MAX(Address1)
    FROM c_location
    WHERE c_location_id IN
      (SELECT MAX(c_location_id)
      FROM c_bpartner_location
      WHERE c_bpartner_id=bp.c_bpartner_id
      AND isbillto       ='Y'
      )
    ) AS INV_ADDRESS1,
    (SELECT MAX(Address2)
    FROM c_location
    WHERE c_location_id IN
      (SELECT MAX(c_location_id)
      FROM c_bpartner_location
      WHERE c_bpartner_id=bp.c_bpartner_id
      AND isbillto       ='Y'
      )
    ) AS INV_ADDRESS2,
    (SELECT MAX(Address3)
    FROM c_location
    WHERE c_location_id IN
      (SELECT MAX(c_location_id)
      FROM c_bpartner_location
      WHERE c_bpartner_id=bp.c_bpartner_id
      AND isbillto       ='Y'
      )
    ) AS INV_ADDRESS3,
    (SELECT MAX(Address4)
    FROM c_location
    WHERE c_location_id IN
      (SELECT MAX(c_location_id)
      FROM c_bpartner_location
      WHERE c_bpartner_id=bp.c_bpartner_id
      AND isbillto       ='Y'
      )
    ) AS INV_ADDRESS4,
    (SELECT MAX(postal)
    FROM c_location
    WHERE c_location_id IN
      (SELECT MAX(c_location_id)
      FROM c_bpartner_location
      WHERE c_bpartner_id=bp.c_bpartner_id
      AND isbillto       ='Y'
      )
    ) AS INV_POSTAL,
    (SELECT MAX(City)
    FROM c_location
    WHERE c_location_id IN
      (SELECT MAX(c_location_id)
      FROM c_bpartner_location
      WHERE c_bpartner_id=bp.c_bpartner_id
      AND isbillto       ='Y'
      )
    ) AS INV_CITY,
    (SELECT MAX(name)
    FROM C_Country
    WHERE c_country_id IN
      (SELECT c_country_id
      FROM c_location
      WHERE c_location_id IN
        (SELECT MAX(c_location_id)
        FROM c_bpartner_location
        WHERE c_bpartner_id=bp.c_bpartner_id
        AND isbillto       ='Y'
        )
      )
    )                AS INV_COUNTRY,
        bp.c_bpartner_id      AS BPID
from c_bpartner bp
inner join c_greeting g ON g.c_greeting_id = bp.c_greeting_id
inner join ad_user usr ON usr.c_bpartner_id=bp.c_bpartner_id
inner join c_order o ON o.c_bpartner_id = bp.c_bpartner_id;

CREATE OR REPLACE FORCE VIEW "RV_PRINTTICKETHDR"("ORDER_ID", "COMMENTAIRE", "SAV_STATUS", "AD_CLIENT_NAME", "AD_ORG_NAME", "AD_ORG_ID", "AD_ORG_ADDRESS1", "AD_ORG_POSTAL", "AD_ORG_CITY", "AD_ORG_PHONE", "AD_ORG_FAX", "AD_ORG_TAXID", "DATEORDERED", "DOCUMENTNAME", "DOCUMENTNO", "SALESREP_CODE", "SALESREP_NAME", "SALESREPPHONE", "GRANDTOTAL", "GRANDTOTALHT", "DOCTYPE_ID", "BPID", "WARRANTY", "IDENTIFIANT", "PAIDAMT", "TOTPAYAMT")
                      AS
  SELECT o.c_order_id AS ORDER_ID,
    o.description     AS COMMENTAIRE,
    o.sav_status      AS SAV_STATUS,
    cl.name           AS AD_CLIENT_NAME,
    org.name          AS AD_ORG_NAME,
    org.ad_org_id     AS AD_ORG_ID,
    orgLoc.address1   AS AD_ORG_ADDRESS1,
    orgLoc.postal     AS AD_ORG_POSTAL,
    orgLoc.city       AS AD_ORG_CITY,
    orginfo.phone     AS AD_ORG_PHONE,
    orginfo.fax       AS AD_ORG_FAX,
    orginfo.taxid     AS AD_ORG_TAXID,
    o.dateOrdered     AS DATEORDERED,
    doc.printname     AS DOCUMENTNAME,
    o.documentno      AS DOCUMENTNO,
    salesRep.value    AS SALESREP_CODE,
    (salesRep.name
    ||' '
    ||salesRep.name2) AS SALESREP_NAME,
    salesRep.phone    AS SALESREPPHONE,
    o.grandtotal      AS GRANDTOTAL,
    (SELECT SUM(tax.totalht)
    FROM RV_PRINTTICKETTAX tax
    WHERE tax.order_id=o.c_order_id
    )                    AS GRANDTOTALHT,
    o.c_doctypetarget_id AS DOCTYPE_ID,
    o.c_bpartner_id      AS BPID,
    o.z_warranty         AS WARRANTY,
    usr.name             AS IDENTIFIANT,
    O.Z_TOTPAYMENT AS PAIDAMT,
    CASE
      WHEN co.C_Order_ID IS NOT NULL
      THEN
            (SELECT (NVL(SUM(ol.priceentered*ol.qtyentered),0))
             FROM C_OrderLine ol
             WHERE ol.C_Order_id = o.C_Order_id
              AND ol.qtyentered      > 0
            )                - nvl(o.Z_TOTPAYMENT,0)
        -(select nvl(sum(p.payamt),0) from C_Payment p where p.C_Order_ID=o.C_Order_id and p.payamt > 0)
      ELSE 
      CASE
       WHEN O.GRANDTOTAL < 0
       THEN
          (nvl(O.Z_TOTPAYMENT,0) + (select nvl(sum(p.payamt),0) from C_Payment p where p.C_Order_ID=o.C_Order_ID))
       ELSE
          (o.grandtotal - nvl(O.Z_TOTPAYMENT,0) -(select nvl(sum(p.payamt),0) from C_Payment p where p.C_Order_ID=o.C_Order_ID))
    END
    END AS TOTPAYAMT
  FROM C_Order o
  INNER JOIN Ad_Client cl
  ON cl.ad_client_id = o.ad_client_id
  INNER JOIN Ad_Org org
  ON org.ad_org_id = o.ad_org_id
  INNER JOIN ad_orginfo orgInfo
  ON orginfo.ad_org_id=org.ad_org_id
  INNER JOIN c_location orgLoc
  ON orgLoc.c_location_id = orgInfo.c_location_id
  INNER JOIN c_doctype doc
  ON doc.c_doctype_id=o.c_doctypetarget_id
  INNER JOIN ad_user salesRep
  ON salesrep.ad_user_id = o.salesrep_id
  INNER JOIN ad_user usr
  ON usr.ad_user_id = o.createdby
  LEFT OUTER JOIN C_Order co
  ON co.documentno=o.Z_OrigOrder;
  
  CREATE OR REPLACE FORCE VIEW "RV_PRINTTICKETMSG" ("ORDER_ID", "MSG")
                         AS
  SELECT o.c_order_id AS ORDER_ID,
        m.msgtext        AS MSG
  FROM Z_OrderMsg o
  INNER JOIN AD_Message m
  ON o.ad_message_id = m.ad_message_id
  
  CREATE OR REPLACE FORCE VIEW RV_PrintTicketDetail ("ORDER_ID","ORDERLINE_ID","M_PRODUCT_NAME","M_PRODUCT_VALUE", "M_PRODUCT_DESCRIPTION", "QTYENTERED", "PRICEENTERED","RATE","PRICEENTEREDHT","TOTALLINE","SERIALNUMBER","ACCESSORIES","PURCHASEDATE","PRODUCTSTATE","DESCRIPTION","DISCOUNT","DEPOSITDATE","ISSTOCKED")
                                                     AS
  SELECT l.c_order_id                   AS ORDER_ID,
    l.c_orderline_id                                AS ORDERLINE_ID,
    p.name                                       AS M_PRODUCT_NAME,
    p.value                                       AS M_PRODUCT_VALUE,
    p.description                                   AS M_PRODUCT_DESCRIPTION,
    l.qtyentered                                         AS QTYENTERED,
    l.priceentered                                          AS PRICEENTERED,
    t.rate                                                  AS RATE,
    round((l.priceentered/(1+t.rate/100)),2)                             AS PRICEENTEREDHT,
    round((l.qtyentered*l.priceentered),2)                             AS TOTALLINE,
    l.Z_SerNo                                               AS SERIALNUMBER,
    l.accessories                                           AS ACCESSORIES,
    l.purchaseDate                                          AS PURCHASEDATE,
    l.m_productState                                        AS PRODUCTSTATE,
    l.description                                           AS DESCRIPTION,
    l.discount                                              AS DISCOUNT,
    l.created												 AS DEPOSITDATE,
    p.isStocked												AS isStocked
  FROM C_OrderLine l
  inner join M_Product p ON p.m_product_id=l.m_product_id
  inner join c_tax t ON t.c_tax_id=l.c_tax_id;
  
  CREATE OR REPLACE FORCE VIEW RV_PrintTicketDetailAction ("ORDERLINE_ID","ACTION_VALUE","QTY", "COMMENTS", "ACTION_NAME","ACTION_ID","ORG","ORG_ID")
                                                     AS
  SELECT a.c_orderline_id                AS ORDERLINE_ID,
    action.value                            AS ACTION_VALUE,
    A.QTYENTERED                            AS QTY,
    A.COMMENTS                              AS COMMENTS,
    action.description                      AS ACTION_NAME,
    action.z_poswfaction_id                 AS ACTION_ID,
    org.name                                AS ORG,
    org.ad_org_id                           AS ORG_ID
  FROM Z_ORDERLINEPOSACTION a
  inner join Ad_org org ON org.ad_org_id=a.ad_orgto_id
  inner join Z_POSWFACTION action ON action.z_poswfaction_id=a.z_poswfaction_id;
  
  CREATE OR REPLACE FORCE VIEW RV_PrintTicketTax ("ORDER_ID","TOTALHT","TOTALTTC","TOTALTAX","RATE")
                                                   AS
SELECT ORDER_ID                                 AS ORDER_ID,
        round(sum(PRICEENTEREDHT*QTYENTERED),2)                     AS  TOTALHT,
        round(sum(PRICEENTERED*QTYENTERED),2)                     AS  TOTALTTC,
        round((sum(PRICEENTERED*QTYENTERED)-sum(PRICEENTEREDHT*QTYENTERED)),2) AS TOTALTAX,
        RATE                                     AS RATE
FROM RV_PrintTicketDetail GROUP BY ORDER_ID, RATE;

CREATE OR REPLACE FORCE VIEW RV_PrintTicketPayment ("ORDER_ID","PAYAMT","SUBPAYMENT")
                                                  AS
SELECT P.C_ORDER_ID             AS ORDER_ID,
       p.payamt                    AS  PAYAMT,
       spr.name                     AS  SUBPAYMENT
FROM C_PAYMENT p
inner join ZSUBPAYMENTRULE spr ON p.zsubpaymentrule_id=spr.zsubpaymentrule_id;
--
--
--
--
-- VUE POUR FACTURE JASPER DB CENTRALE
--
--
--
--
--

CREATE OR REPLACE FORCE VIEW RV_PrintInvoiceHdr ("RECORD_ID","C_ORDER_ID","AD_CLIENT_NAME", "AD_ORG_NAME", "AD_ORG_ADDRESS1", "AD_ORG_POSTAL", "AD_ORG_CITY", "AD_ORG_PHONE","AD_ORG_FAX","AD_ORG_TAXID", "DATEORDERED","DOCUMENTNAME","DOCUMENTNO",
                                                "SALESREP_CODE","SALESREP_NAME","SALESREPPHONE","GRANDTOTAL","GRANDTOTALHT","ZCOM")
                                                     AS
  SELECT o.c_invoice_id                   AS RECORD_ID,
    o.c_order_id                          AS C_ORDER_ID,
    cl.name                                AS AD_CLIENT_NAME,
    org.name                                        AS AD_ORG_NAME,
    orgLoc.address1                                   AS AD_ORG_ADDRESS1,
    orgLoc.postal                                           AS AD_ORG_POSTAL,
    orgLoc.city                                          AS AD_ORG_CITY,
    orginfo.phone                                       AS AD_ORG_PHONE,
    orginfo.fax                                      AS AD_ORG_FAX,
    orginfo.taxid                                      AS AD_ORG_TAXID,
    o.dateInvoiced                                      AS DATEORDERED,
    doc.printname                                          as DOCUMENTNAME,
    o.documentno                                      AS DOCUMENTNO,
    salesRep.value                                    AS SALESREP_CODE,
    (salesRep.name||' '||salesRep.name2)              AS SALESREP_NAME,
    salesRep.phone                                    AS SALESREPPHONE,
    o.grandtotal   										AS GRANDTOTAL,
    (select sum(tax.totalht) from RV_PRINTTICKETTAX tax where tax.order_id=o.c_order_id) AS GRANDTOTALHT,
    o.z_com                                           AS ZCOM
  FROM C_Invoice o
  inner join Ad_Client cl ON cl.ad_client_id = o.ad_client_id
  inner join Ad_Org org ON org.ad_org_id = o.ad_org_id
  inner join ad_orginfo orgInfo ON orginfo.ad_org_id=org.ad_org_id
  inner join c_location orgLoc ON orgLoc.c_location_id = orgInfo.c_location_id
  inner join c_doctype doc ON doc.c_doctype_id=o.c_doctypetarget_id
  inner join ad_user salesRep ON salesrep.ad_user_id = o.salesrep_id;
  
    CREATE OR REPLACE FORCE VIEW RV_PrintInvoiceDetail ("RECORD_ID","RECORDLINE_ID","M_PRODUCT_VALUE", "M_PRODUCT_DESCRIPTION", "QTYENTERED", "PRICEENTERED","RATE","PRICEENTEREDHT","TOTALLINE","SERIALNUMBER","DESCRIPTION","ORDERLINE_ID")
                                                     AS
  SELECT l.c_invoice_id                  AS RECORD_ID,
    l.c_invoiceline_id                                AS RECORDLINE_ID,
    p.value                                       AS M_PRODUCT_VALUE,
    p.description                                   AS M_PRODUCT_DESCRIPTION,
    l.qtyentered                                         AS QTYENTERED,
    l.priceentered                                          AS PRICEENTERED,
    t.rate                                                  AS RATE,
    round((l.priceentered/(1+t.rate/100)),2)                             AS PRICEENTEREDHT,
    round((l.qtyentered*l.priceentered),2)                             AS TOTALLINE,
    ol.Z_serno                                               AS SERIALNUMBER,
    l.description                                           AS DESCRIPTION,
    l.c_orderline_ID										AS ORDERLINE_ID
  FROM C_InvoiceLine l
  inner join C_OrderLine ol ON ol.c_orderline_ID=l.c_orderline_id
  inner join M_Product p ON p.m_product_id=l.m_product_id
  inner join c_tax t ON t.c_tax_id=l.c_tax_id;
  
 CREATE OR REPLACE FORCE VIEW RV_PrintInvoiceTax ("RECORD_ID","TOTALHT","TOTALTTC","TOTALTAX","RATE")
                                                   AS
SELECT RECORD_ID                                 AS RECORD_ID,
        round(sum(PRICEENTEREDHT),2)                     AS  TOTALHT,
        round(sum(PRICEENTERED),2)                     AS  TOTALTTC,
        (sum(PRICEENTERED)-sum(PRICEENTEREDHT)) AS TOTALTAX,
        RATE                                     AS RATE
FROM RV_PrintInvoiceDetail GROUP BY RECORD_ID, RATE;

CREATE OR REPLACE FORCE VIEW RV_PrintInvoicePartner ("RECORD_ID","NAME","VALUE","FIRSTNAME","PHONE","PHONE2","EMAIL","TAXID","GREETING","SHIP_NAME","SHIP_ADDRESS1","SHIP_ADDRESS2","SHIP_NUMBER","SHIP_BOX","SHIP_POSTAL","SHIP_CITY","SHIP_COUNTRY","INV_ADDRESS1","INV_ADDRESS2","INV_NUMBER","INV_BOX","INV_POSTAL","INV_CITY","INV_COUNTRY","AD_LANGUAGE")
                                                     AS
select  o.c_invoice_id   AS RECORD_ID,
        usr.name           AS NAME,
        bp.value          AS VALUE,
        usr.name2          AS FIRSTNAME,
        usr.phone          AS PHONE,
        usr.phone2         AS PHONE2,
        usr.email          AS EMAIL,
        bp.taxid          AS TAXID,
        g.name            AS GREETING,
        bplocship.name      AS SHIP_NAME,
        locShip.Address1   AS SHIP_ADDRESS1,
        locShip.address2   AS SHIP_ADDRESS2,
        locShip.address3   AS SHIP_NUMBER,
        locShip.address4   AS SHIP_BOX,
        locShip.postal        AS SHIP_POSTAL,
        locShip.City       AS SHIP_CITY,
        bplocinv.name            AS SHIP_COUNTRY,
        locInv.address1   AS INV_ADDRESS1,
        locInv.address2   AS INV_ADDRESS2,
        locInv.address3   AS INV_NUMBER,
        locInv.address4   AS INV_BOX,
        locInv.postal        AS INV_POSTAL,
        locInv.City       AS INV_CITY,
        cInv.name            AS INV_COUNTRY,
        la.ad_language		AS AD_LANGUAGE
from c_bpartner bp
inner join c_greeting g ON g.c_greeting_id = bp.c_greeting_id
inner join ad_language la ON la.ad_language = bp.ad_language
inner join ad_user usr ON usr.c_bpartner_id=bp.c_bpartner_id
inner join c_invoice o ON o.c_bpartner_id = bp.c_bpartner_id
inner join c_bpartner_location bpLocShip ON (bpLocShip.c_bpartner_id=bp.c_bpartner_id and bplocship.isshipto='Y')
inner join c_location locShip ON bplocship.c_location_id=locship.c_location_id
inner join c_bpartner_location bpLocInv ON (bpLocInv.c_bpartner_id=bp.c_bpartner_id and bplocinv.isbillto='Y')
inner join c_location locInv ON bplocinv.c_location_id=locInv.c_location_id
inner join c_country cShip ON cShip.c_country_id = locShip.c_country_id
inner join c_country cInv ON cInv.c_country_id = locInv.c_country_id;

