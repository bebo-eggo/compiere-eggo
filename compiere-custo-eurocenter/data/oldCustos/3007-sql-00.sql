  CREATE OR REPLACE FORCE VIEW "ZRV_EXPORTFIN" ("AD_CLIENT_ID", "AD_ORG_ID", "CREATED", "CREATEDBY", "UPDATED", "UPDATEDBY", "ISACTIVE", "POREFERENCE", "DOCUMENTNO", "NAME", "TOTALAMT", "Z_NUMACCEPT", "Z_DATEENVCONT", "Z_DATEENVATT", "Z_COMPLET", "VALUE", "DATEPOSE") AS 
  SELECT co.ad_client_id,
    co.ad_org_id,
    co.created ,
    co.createdby,
    co.updated,
    co.updatedby,
    co.isactive,
co.POREFERENCE, co.DOCUMENTNO,
cb.name, zops.TOTALAMT, zops.Z_NUMACCEPT,zops.Z_DATEENVCONT, zops.Z_DATEENVATT,zops.Z_COMPLET,CB.VALUE,co.DATEPOSE

from C_Order co
inner join Z_ORDERPAYMSCHEDULE zops on (zops.C_ORDER_ID = co.C_ORDER_ID and zops.IsPaid = 'N')
--left join Z_ORDERPAYMENT zop on zop.Z_ORDERPAYMSCHEDULE_ID = zops.Z_ORDERPAYMSCHEDULE_ID
inner join C_BPARTNER cb on cb.C_BPARTNER_ID = co.C_BPARTNER_ID
where exists (Select 1 from Z_TYPEECHEANCE zte where zte.Z_TYPEECHEANCE_ID = zops.Z_TYPEECHEANCE_ID and zte.ISFINANCEMENT='Y')
--and not exists (Select 1 from Z_ORDERPAYMENT zop where zop.Z_ORDERPAYMSCHEDULE_ID = zops.Z_ORDERPAYMSCHEDULE_ID and zop.C_PAYMENT_ID is not null)
--and ((zop.C_PAYMENT_ID is null )) 
--and co.POreference = '055EVAD140016'
--and zops.IsPaid = 'N'
and zops.TOTALAMT<>0;