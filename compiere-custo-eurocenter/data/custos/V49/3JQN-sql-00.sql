ALTER TABLE C_Order ADD XX_Recouv_List CHAR(2);
ALTER TABLE C_Order ADD XX_Recouv_Date DATE;
ALTER TABLE XX_OrderEventLog ADD XX_Recouv_List CHAR(2);
ALTER TABLE XX_OrderEventLog ADD XX_Recouv_Date DATE;
ALTER TABLE XX_OrderEventLog ADD DownloadURL NVARCHAR2(2000);
update AD_Process set IsReport = 'Y' where AD_Process_ID = 1003503;
CREATE OR REPLACE FORCE VIEW "XRV_ORDEREVENTLOG" ("AD_CLIENT_ID", "AD_ORG_ID", "AD_USER_ID", "CREATED", "CREATEDBY", "DATEACTION", "EVENTTYPE", "ISACTIVE", "C_ORDER_ID", "UPDATED", "UPDATEDBY", "DESCRIPTION",xx_recouv_date, xx_recouv_list) AS 
Select AD_CLIENT_ID,
AD_ORG_ID,
AD_USER_ID,
CREATED,
CREATEDBY,
CREATED as DATEACTION,
EVENTTYPE,
ISACTIVE,
RECORD_ID as C_Order_ID,
UPDATED,
UPDATEDBY,
DESCRIPTION, xx_recouv_date, xx_recouv_list from XX_ORDEREVENTLOG where AD_Table_ID = 259;
/
CREATE OR REPLACE FORCE VIEW "XRV_ORDEREVENTLOG_R" as
select * from (
select xx.AD_Client_ID, xx.AD_Org_ID, co.c_order_id, co.c_bpartner_id, cb.Value as BPartnerValue, cb.Name||' '||cb.Name2 as BPartnerName, co.DocumentNo, co.Poreference,
co.PROM_BPartner_ID , (getSoldeOrder(co.C_Order_ID)) as Z_Solde, co.z_orderstepstatus,xx.DateAction,xx.xx_recouv_list, xx.xx_recouv_date, row_number() over (partition by xx.C_Order_ID order by xx.DateAction desc) rn
from XRV_ORDEREVENTLOG xx
inner join C_Order co on co.C_Order_ID = xx.C_Order_ID
inner join C_BPartner cb on cb.C_bpartner_ID = co.C_bpartner_ID
where xx.xx_recouv_list is not null )where rn = 1;
/