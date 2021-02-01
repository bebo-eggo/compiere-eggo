connect &1/&2@&3
--
--
--
--
-- VUE POUR JASPER DB MAGASIN
--
--
--
--
--
CREATE OR REPLACE FORCE VIEW "RV_PRINTTICKETPARTNER" ("ORDER_ID", "NAME", "VALUE", "FIRSTNAME", "PHONE", "PHONE2", "EMAIL", "TAXID", "GREETING", "SHIP_NAME", "SHIP_ADDRESS1", "SHIP_ADDRESS2", "SHIP_NUMBER", "SHIP_BOX", "SHIP_POSTAL", "SHIP_CITY", "SHIP_COUNTRY", "INV_ADDRESS1", "INV_ADDRESS2", "INV_NUMBER", "INV_BOX", "INV_POSTAL", "INV_CITY", "INV_COUNTRY", "BPID")
                         AS
  SELECT o.i_posorder_id AS ORDER_ID,
    usr.name             AS NAME,
    bp.value             AS VALUE,
    usr.name2            AS FIRSTNAME,
    usr.phone            AS PHONE,
    usr.phone2           AS PHONE2,
    usr.email            AS EMAIL,
    bp.taxid             AS TAXID,
    g.name               AS GREETING,
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
    bp.c_bpartner_id AS BPID
  FROM c_bpartner bp
  INNER JOIN c_greeting g
  ON g.c_greeting_id = bp.c_greeting_id
  INNER JOIN ad_user usr
  ON usr.c_bpartner_id=bp.c_bpartner_id
  INNER JOIN i_posOrder o
  ON o.c_bpartner_id          = bp.c_bpartner_id
  WHERE o.i_ispartnermodified ='N'
  AND o.c_bpartner_id        !=0
  UNION
    (SELECT o.i_posorder_id   AS ORDER_ID,
      bp.name                 AS NAME,
      bp.value                AS VALUE,
      bp.name2                AS FIRSTNAME,
      bp.phone                AS PHONE,
      bp.phone2               AS PHONE2,
      bp.email                AS EMAIL,
      bp.taxid                AS TAXID,
      g.name                  AS GREETING,
      bp.shipname             AS SHIP_NAME,
      bp.shipAddress1         AS SHIP_ADDRESS1,
      bp.shipAddress2         AS SHIP_ADDRESS2,
      bp.shipAddress3         AS SHIP_NUMBER,
      bp.shipAddress4         AS SHIP_BOX,
      bp.shipZip              AS SHIP_POSTAL,
      bp.shipCity             AS SHIP_CITY,
      cShip.name              AS SHIP_COUNTRY,
      bp.InvAddress1          AS INV_ADDRESS1,
      bp.InvAddress2          AS INV_ADDRESS2,
      bp.InvAddress3          AS INV_NUMBER,
      bp.InvAddress4          AS INV_BOX,
      bp.InvZip               AS INV_POSTAL,
      bp.InvCity              AS INV_CITY,
      cInv.name               AS INV_COUNTRY,
      bp.i_posorderpartner_id AS BPID
    FROM i_posorderpartner bp
    INNER JOIN c_greeting g
    ON g.c_greeting_id = bp.c_greeting_id
    INNER JOIN c_country cShip
    ON cShip.c_country_id = bp.shipc_country_id
    INNER JOIN c_country cInv
    ON cInv.c_country_id = bp.invc_country_id
    INNER JOIN i_posOrder o
    ON o.i_posorder_id          = bp.i_posorder_id
    WHERE o.i_ispartnermodified ='Y'
    OR o.c_bpartner_id          =0
    );

CREATE OR REPLACE FORCE VIEW "RV_PRINTTICKETHDR" ("ORDER_ID", "AD_CLIENT_NAME", "AD_ORG_NAME", "AD_ORG_ID", "AD_ORG_ADDRESS1", "AD_ORG_POSTAL", "AD_ORG_CITY", "AD_ORG_PHONE", "AD_ORG_FAX", "AD_ORG_TAXID", "DATEORDERED", "DOCUMENTNAME", "DOCUMENTNO", "SALESREP_CODE", "SALESREP_NAME", "SALESREPPHONE", "GRANDTOTAL", "GRANDTOTALHT", "DOCTYPE_ID", "BPID", "PAIDAMT", "TOTPAYAMT")
                         AS
 SELECT o.i_posorder_id AS ORDER_ID,
    cl.name              AS AD_CLIENT_NAME,
    org.name             AS AD_ORG_NAME,
    org.ad_org_id        AS AD_ORG_ID,
    orgLoc.address1      AS AD_ORG_ADDRESS1,
    orgLoc.postal        AS AD_ORG_POSTAL,
    orgLoc.city          AS AD_ORG_CITY,
    orginfo.phone        AS AD_ORG_PHONE,
    orginfo.fax          AS AD_ORG_FAX,
    orginfo.taxid        AS AD_ORG_TAXID,
    o.dateOrdered        AS DATEORDERED,
    doc.printname        AS DOCUMENTNAME,
    o.documentno         AS DOCUMENTNO,
    salesRep.value       AS SALESREP_CODE,
    (salesRep.name
    ||' '
    ||salesRep.name2) AS SALESREP_NAME,
    salesRep.phone    AS SALESREPPHONE,
    o.grandtotal      AS GRANDTOTAL,
    (SELECT SUM(tax.totalht)
    FROM RV_PRINTTICKETTAX tax
    WHERE tax.order_id=o.i_posorder_id
    )                    AS GRANDTOTALHT,
    o.c_doctypetarget_id AS DOCTYPE_ID,
    CASE
      WHEN o.c_bpartner_id > 0
      THEN o.c_bpartner_id
      ELSE o.i_posorderPartner_id
    END            AS BPID,
    O.Z_TOTPAYMENT AS PAIDAMT,
    CASE
      WHEN (select count(nvl(1,0)) from I_PosOrder co WHERE co.documentno=o.Z_OrigOrder)> 0
      THEN
        (SELECT (NVL(SUM(ol.priceentered*ol.qtyentered),0))
        FROM I_PosOrderLine ol
        WHERE ol.I_PosOrder_id = o.I_PosOrder_id
        AND ol.qtyentered      > 0
        ) - NVL(o.Z_TOTPAYMENT,0) -
        (SELECT NVL(SUM(p.payamt),0)
        FROM i_posorderpayment p
        WHERE p.i_posorder_id=o.i_posorder_id
        AND p.payamt         > 0
        )
      ELSE
        CASE
          WHEN O.GRANDTOTAL < 0
          THEN (NVL(O.Z_TOTPAYMENT,0) +
            (SELECT NVL(SUM(p.payamt),0)
            FROM i_posorderpayment p
            WHERE p.i_posorder_id=o.i_posorder_id
            ))
          ELSE (o.grandtotal - NVL(O.Z_TOTPAYMENT,0) -
            (SELECT NVL(SUM(p.payamt),0)
            FROM i_posorderpayment p
            WHERE p.i_posorder_id=o.i_posorder_id
            ))
        END
    END AS TOTPAYAMT
  FROM I_PosOrder o
  INNER JOIN Ad_Client cl
  ON cl.ad_client_id = o.ad_client_id
  INNER JOIN Ad_Org org
  ON org.ad_org_id = o .ad_org_id
  INNER JOIN ad_orginfo orgInfo
  ON orginfo.ad_org_id=org.ad_org_id
  INNER JOIN c_location orgLoc
  ON orgLoc.c_location_id = orgInfo.c_location_id
  INNER JOIN c_doctype doc
  ON doc.c_doctype_id=o.c_doctypetarget_id
  INNER JOIN ad_user salesRep
  ON salesrep.ad_user_id = o.salesrep_id;
  
 CREATE OR REPLACE FORCE VIEW "RV_PRINTTICKETMSG" ("ORDER_ID", "MSG")
                         AS
  SELECT o.i_posorder_id AS ORDER_ID,
        m.msgtext        AS MSG
  FROM I_PosOrderMsg o
  INNER JOIN AD_Message m
  ON o.ad_message_id = m.ad_message_id;
  
  
CREATE OR REPLACE FORCE VIEW RV_PrintTicketDetail ("ORDER_ID","ORDERLINE_ID","M_PRODUCT_NAME","M_PRODUCT_VALUE", "M_PRODUCT_DESCRIPTION", "QTYENTERED", "PRICEENTERED","RATE","PRICEENTEREDHT","TOTALLINE","SERIALNUMBER","ACCESSORIES","PURCHASEDATE","PRODUCTSTATE","DESCRIPTION","DISCOUNT","DEPOSITDATE","ISSTOCKED")
                                                     AS
  SELECT l.i_posorder_id                   AS ORDER_ID,
    l.i_posorderline_id                                AS ORDERLINE_ID,
    p.name                                       AS M_PRODUCT_NAME,
    p.value                                       AS M_PRODUCT_VALUE,
    p.description                                   AS M_PRODUCT_DESCRIPTION,
    l.qtyentered                                         AS QTYENTERED,
    l.priceentered                                          AS PRICEENTERED,
    t.rate                                                  AS RATE,
    round((l.priceentered/(1+t.rate/100)),2)                             AS PRICEENTEREDHT,
    round((l.qtyentered*l.priceentered),2)                             AS TOTALLINE,
    l.Z_serno                                               AS SERIALNUMBER,
    l.accessories                                           AS ACCESSORIES,
    l.purchaseDate                                          AS PURCHASEDATE,
    l.m_productState                                        AS PRODUCTSTATE,
    l.description                                           AS DESCRIPTION,
    l.discount                                              AS DISCOUNT,
    l.created 											      AS DEPOSITDATE,
    p.isStocked												AS isStocked
  FROM I_PosOrderLine l
  inner join M_Product p ON p.m_product_id=l.m_product_id
  inner join c_tax t ON t.c_tax_id=l.c_tax_id;
  
    CREATE OR REPLACE FORCE VIEW RV_PrintTicketDetailAction ("ORDERLINE_ID","ACTION_VALUE","QTY", "COMMENTS", "ACTION_NAME","ACTION_ID", "ORG","ORG_ID")
                                                     AS
  SELECT a.i_posorderline_id                AS ORDERLINE_ID,
    action.value                            AS ACTION_VALUE,
    A.QTYENTERED                            AS QTY,
    A.COMMENTS                              AS COMMENTS,
    action.description                      AS ACTION_NAME,
    action.z_poswfaction_id                 AS ACTION_ID,
    org.name                                AS ORG,
    org.ad_org_id                           AS ORG_ID
  FROM i_posorderlineaction a
  inner join Ad_org org ON org.ad_org_id=a.ad_orgto_id
  inner join Z_POSWFACTION action ON action.z_poswfaction_id=a.z_poswfaction_id;
  
CREATE OR REPLACE FORCE VIEW RV_PrintTicketTax ("ORDER_ID","TOTALHT","TOTALTTC","TOTALTAX","RATE")
                                                   AS
SELECT ORDER_ID                                 AS ORDER_ID,
        round(sum(PRICEENTEREDHT),2)                     AS  TOTALHT,
        round(sum(PRICEENTERED),2)                     AS  TOTALTTC,
        (sum(PRICEENTERED)-sum(PRICEENTEREDHT)) AS TOTALTAX,
        RATE                                     AS RATE
FROM RV_PrintTicketDetail GROUP BY ORDER_ID, RATE;

CREATE OR REPLACE FORCE VIEW RV_PrintTicketPayment ("ORDER_ID","PAYAMT","SUBPAYMENT")
                                                  AS
SELECT p.I_PosOrder_ID                                 AS ORDER_ID,
       p.payamt                     AS  PAYAMT,
       spr.name                     AS  SUBPAYMENT
FROM I_POSORDERPAYMENT p
inner join ZSUBPAYMENTRULE spr ON p.zsubpaymentrule_id=spr.zsubpaymentrule_id;
exit