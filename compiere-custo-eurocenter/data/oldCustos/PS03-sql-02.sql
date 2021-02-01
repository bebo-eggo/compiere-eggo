--
--
--
--
-- Modification de la vue RV_PRINTTICKETPARTNER et RV_PRINTTICKETHDR
--
--
--
--
--
CREATE OR REPLACE FORCE VIEW "RV_PRINTTICKETPARTNER" 
                      AS
  SELECT o.c_order_id AS ORDER_ID,
    usr.name          AS NAME,
    bp.value          AS VALUE,
    usr.name2         AS FIRSTNAME,
    usr.phone         AS PHONE,
    usr.phone2        AS PHONE2,
    usr.email         AS EMAIL,
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
    ) AS SHIP_NUMBER,
    (SELECT MAX(Address4)
    FROM c_location
    WHERE c_location_id IN
      (SELECT MAX(c_location_id)
      FROM c_bpartner_location
      WHERE c_bpartner_id=bp.c_bpartner_id
      AND isshipto       ='Y'
      )
    ) AS SHIP_BOX,
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
    ) AS INV_NUMBER,
    (SELECT MAX(Address4)
    FROM c_location
    WHERE c_location_id IN
      (SELECT MAX(c_location_id)
      FROM c_bpartner_location
      WHERE c_bpartner_id=bp.c_bpartner_id
      AND isbillto       ='Y'
      )
    ) AS INV_BOX,
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
  LEFT JOIN c_greeting g
  ON g.c_greeting_id = bp.c_greeting_id
  INNER JOIN ad_user usr
  ON usr.c_bpartner_id=bp.c_bpartner_id
  INNER JOIN c_order o
  ON o.c_bpartner_id = bp.c_bpartner_id;
  
  
  CREATE OR REPLACE FORCE VIEW "RV_PRINTTICKETHDR"
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
    o.c_bpartner_id      AS BPID
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
  ON salesrep.ad_user_id = o.salesrep_id;
  