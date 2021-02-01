ALTER TABLE I_Order ADD Ref_Order_ID NUMBER(10); 
ALTER TABLE I_Order ADD CONSTRAINT FK591_1027289X FOREIGN KEY (Ref_Order_ID) REFERENCES C_Order (C_Order_ID);
ALTER TABLE C_OrderLine ADD Ref_Order_ID NUMBER(10); 
ALTER TABLE C_OrderLine ADD CONSTRAINT FK260_1027290X FOREIGN KEY (Ref_Order_ID) REFERENCES C_Order (C_Order_ID);
ALTER TABLE I_Movement ADD Ref_Order_ID NUMBER(10); 
ALTER TABLE I_Movement ADD CONSTRAINT FK1003886_1027291X FOREIGN KEY (Ref_Order_ID) REFERENCES C_Order (C_Order_ID);
ALTER TABLE I_Movement ADD LineDescription NVARCHAR2(255);
ALTER TABLE M_MovementLine ADD Ref_Order_ID NUMBER(10); 
ALTER TABLE M_MovementLine ADD CONSTRAINT FK324_1027293X FOREIGN KEY (Ref_Order_ID) REFERENCES C_Order (C_Order_ID);
ALTER TABLE M_Requisition ADD Ref_Order_ID NUMBER(10); 
ALTER TABLE M_Requisition ADD CONSTRAINT FK702_1027294X FOREIGN KEY (Ref_Order_ID) REFERENCES C_Order (C_Order_ID);
create index IORDER_REFORDER_IDX on I_Order (Ref_Order_ID);
create index ORDERLINE_REFORDER_IDX on C_OrderLine (Ref_Order_ID);
create index MOVELINE_REFORDER_IDX on M_MovementLine (Ref_Order_ID);
create index REQUI_REFORDER_IDX on M_Requisition (Ref_Order_ID);
UPDATE AD_Column set IsCallout='Y' where AD_Column_ID = 11501;
update AD_IMPFORMAT_ROW set AD_COLUMN_ID = 1027292 where AD_IMPFORMAT_ROW_ID = 1002021;
CREATE OR REPLACE FORCE VIEW "ZRV_OVLINKOALINKRECEIPT" ("AD_CLIENT_ID", "AD_ORG_ID", "CREATED", "CREATEDBY", "ISACTIVE", "UPDATED", "UPDATEDBY", "C_ORDER_ID", "DOCNO_OV","DANO", "DA_STATUS", "OA", "OA_STATUS", "FOURN", "MOVEMENT", "MAG_EXP", "TRF_STATUS", "RECEPT","MI_STATUS","PRODUCTVALUE") AS 
 Select OV.AD_CLIENT_ID , OV.AD_ORG_ID , OV.CREATED , OV.CREATEDBY , OV.ISACTIVE , OV.UPDATED , OV.UPDATEDBY,OV.C_ORDER_ID, OV.DOCUMENTNO as DOCNO_OV, null as DANO, null as DA_STATUS,
OA.DOCUMENTNO||' - '||CASE WHEN OA.DOCSTATUS in ('CO','CL') THEN TO_CHAR(OA.DateOrdered,'DD/MM/YYYY') else ' ' end as OA,  getRef_List_Data(131,OA.DOCSTATUS,'fr_FR') as OA_STATUS,cb.Value as FOURN,
null as MOVEMENT,
null as MAG_EXP, 
null AS TRF_STATUS,
(Select mi.DOCUMENTNO||' - '||CASE WHEN mi.DOCSTATUS not in ('DR') THEN TO_CHAR(mi.MovementDate,'DD/MM/YYYY') else ' ' end ||' - '|| getRef_List_Data(131,mi.DOCSTATUS,'fr_FR')
from  M_INOUT mi INNER JOIN M_INOUTLINE mil on (mi.M_INOUT_ID = mil.M_INOUT_ID  )
WHERE mi.C_ORDER_ID = OA.C_ORDER_ID and mil.C_ORDERLINE_ID = OAL.C_ORDERLINE_ID and MIL.M_Product_ID = col.M_PRODUCT_ID  )as RECEPT,null as MI_STATUS,
mp.Value as PRODUCTVALUE
from C_Order OV
INNER JOIN C_OrderLine col on col.C_ORDER_ID = OV.C_ORDER_ID
INNER jOIN M_PRODUCT mp on mp.M_PRODUCT_ID = col.M_PRODUCT_ID
INNER JOIN C_OrderLine OAL on (OAL.REF_ORDER_ID = OV.C_ORDER_ID and OAL.M_Product_ID = col.M_PRODUCT_ID)
INNER JOIN C_Order OA on OAL.C_ORDER_ID = OA.C_ORDER_ID
INNER JOIN C_BPartner cb on cb.C_BPARTNER_ID = OA.C_BPARTNER_ID;
CREATE OR REPLACE FORCE VIEW "ZRV_OVLINKDA" ("AD_CLIENT_ID", "AD_ORG_ID", "CREATED", "CREATEDBY", "ISACTIVE", "UPDATED", "UPDATEDBY", "C_ORDER_ID", "DOCNO_OV", "DANO", "DA_STATUS","PRODUCTVALUE") AS 
Select OV.AD_CLIENT_ID , OV.AD_ORG_ID , OV.CREATED , OV.CREATEDBY , OV.ISACTIVE , OV.UPDATED , OV.UPDATEDBY,OV.C_ORDER_ID, OV.DOCUMENTNO as DOCNO_OV, 
DA.DOCUMENTNO||'-'||CASE WHEN DA.DOCSTATUS in ('CO','CL') THEN TO_CHAR(DA.DATEDOC ,'DD/MM/YYYY') else ' ' end as DANO,getRef_List_Data(131,DA.DOCSTATUS,'fr_FR') as DA_STATUS
,mp.value as productValue
from C_Order OV
INNER JOIN C_OrderLine col on col.C_ORDER_ID = OV.C_ORDER_ID
INNER jOIN M_PRODUCT mp on mp.M_PRODUCT_ID = col.M_PRODUCT_ID
INNER JOIN M_REQUISITION DA on OV.C_ORDER_ID = DA.REF_ORDER_ID 
INNER JOIN M_REQUISITIONLINE DAL on (DAL.M_PRODUCT_ID = COL.M_PRODUCT_ID and DA.M_REQUISITION_ID = DAL.M_REQUISITION_ID);
CREATE OR REPLACE FORCE VIEW "ZRV_OVLINKTRANF" ("AD_CLIENT_ID", "AD_ORG_ID", "CREATED", "CREATEDBY", "ISACTIVE", "UPDATED", "UPDATEDBY", "C_ORDER_ID", "DOCNO_OV",
"MOVEMENT", "MAG_EXP", "TRF_STATUS","PRODUCTVALUE") AS 
 Select OV.AD_CLIENT_ID , OV.AD_ORG_ID , OV.CREATED , OV.CREATEDBY , OV.ISACTIVE , OV.UPDATED , OV.UPDATEDBY,OV.C_ORDER_ID, OV.DOCUMENTNO as DOCNO_OV, 
mm.DOCUMENTNO||'-'||CASE WHEN mm.DOCSTATUS not in ('DR') THEN TO_CHAR(mm.MovementDate,'DD/MM/YYYY') else ' ' end as MOVEMENT,
NVL(ao.Value,'-') as MAG_EXP, case WHEN mm.ISINTRANSIT = 'Y' AND mm.DOCSTATUS not in ('CO','CL')  then 'En Transit' WHEN (mm.ISINTRANSIT = 'N' AND mm.DOCSTATUS in ('IP')) THEN getRef_List_Data(131,mm.DOCSTATUS,'fr_FR') WHEN mm.DOCSTATUS in ('CO','CL') then getRef_List_Data(131,mm.DOCSTATUS,'fr_FR') ELSE '-' END AS TRF_STATUS,
mp.Value as productValue
from C_Order OV
INNER join C_OrderLine col on col.C_ORDER_ID = OV.C_ORDER_ID
INNER jOIN M_PRODUCT mp on mp.M_PRODUCT_ID = col.M_PRODUCT_ID
INNER JOIN M_MOVEMENTLINE ML on (ML.REF_ORDER_ID =  OV.C_ORDER_ID and ML.M_Product_ID = col.M_PRODUCT_ID)
INNER JOIN AD_ORG AO on AO.AD_ORG_ID = ML.AD_ORG_ID
INNER JOIN M_MOVEMENT mm on mm.M_MOVEMENT_ID = ML.M_MOVEMENT_ID;
DROP TABLE ZT_INOUT_RECEIVED;
CREATE TABLE "ZT_INOUT_RECEIVED" 
   (	"AD_ORG_ID" NUMBER(10,0) NOT NULL ENABLE, 
	"M_WAREHOUSE_ID" NUMBER(10,0) NOT NULL ENABLE, 
	"M_LOCATOR_ID" NUMBER(10,0), 
	"M_PRODUCT_ID" NUMBER(10,0), 
	"MOVEMENTDATE" DATE, 
	"SUMQTY" NUMBER, 
	"QTYONHAND" NUMBER, 
	"AD_PINSTANCE_ID" NUMBER, 
	"CREATED" DATE, 
	"AD_USER_ID" NUMBER
   );
DROP TABLE "ZT_ORDER_RECEIVED" ;
CREATE TABLE "ZT_ORDER_RECEIVED" 
   (	"CREATED" DATE, 
	"M_PRODUCT_ID" NUMBER, 
	"AD_PINSTANCE_ID" NUMBER, 
	"C_ORDER_ID" NUMBER, 
	"QTYTODELIVERED" NUMBER, 
	"AD_USER_ID" NUMBER
   );
 create or replace PROCEDURE STATUTCMDCLIENT (PInstance_ID number) AS
      p_AD_Org_ID  number;
      p_DateFrom Date;
      p_DateTo       Date;
      p_ADClient_ID  number;
      p_C_Order_ID number;
      p_C_BPartner_ID number;
      p_M_Product_ID number;
      p_SalesRep_ID number;
      v_MbIn number;
    BEGIN
    --Get Params
    Select NVL(adp.P_NUMBER,0) into p_AD_Org_ID from AD_PINSTANCE_PARA adp where adp.AD_PINSTANCE_ID = PInstance_ID and upper(adp.ParameterName) = upper('AD_Org_ID');
    Select NVL(adp.P_NUMBER,0) into p_C_Order_ID from AD_PINSTANCE_PARA adp where adp.AD_PINSTANCE_ID = PInstance_ID and upper(adp.ParameterName) = upper('C_Order_ID');
    Select NVL(adp.P_NUMBER,0) into p_C_BPartner_ID from AD_PINSTANCE_PARA adp where adp.AD_PINSTANCE_ID = PInstance_ID and upper(adp.ParameterName) = upper('C_BPartner_ID');
    Select NVL(adp.P_NUMBER,0) into p_M_Product_ID from AD_PINSTANCE_PARA adp where adp.AD_PINSTANCE_ID = PInstance_ID and upper(adp.ParameterName) = upper('M_Product_ID');
    Select NVL(adp.P_NUMBER,0)  into p_ADClient_ID from AD_PINSTANCE_PARA adp where adp.AD_PINSTANCE_ID = PInstance_ID and upper(adp.ParameterName) = upper('AD_Client_ID');
    Select NVL(adp.P_NUMBER,0)  into p_SalesRep_ID from AD_PINSTANCE_PARA adp where adp.AD_PINSTANCE_ID = PInstance_ID and upper(adp.ParameterName) = upper('SalesRep_ID');
    Select adp.P_DATE  into p_DateFrom from AD_PINSTANCE_PARA adp where adp.AD_PINSTANCE_ID = PInstance_ID and upper(adp.ParameterName) = upper('DateReceived'); 
    Select adp.P_DATE_TO  into p_DateTo from AD_PINSTANCE_PARA adp where adp.AD_PINSTANCE_ID = PInstance_ID and upper(adp.ParameterName) = upper('DateReceived'); 
    --GET ADUSER
    
    --Vider la table des inventaires
 
    -- Supprimer les records avec le meme ad_Pinstance
        Delete from ZT_ORDER_RECEIVED where AD_PINSTANCE_ID = PInstance_ID;
    Delete from ZT_INOUT_RECEIVED where AD_PINSTANCE_ID = PInstance_ID;
  
    Delete from ZT_ORDER_RECEIVED where AD_User_ID = p_SalesRep_ID;
    Delete from ZT_INOUT_RECEIVED where AD_User_ID = p_SalesRep_ID;
    
    --Supprimer les vieux records
    Delete from ZT_ORDER_RECEIVED where trunc(CREATED) < trunc(SYSDATE)-2;
    Delete from ZT_INOUT_RECEIVED where trunc(CREATED) < trunc(SYSDATE)-2;
    
     --Ajouter dans la table les qté recue
    EXECUTE IMMEDIATE 'INSERT INTO ZT_INOUT_RECEIVED
    Select mi.AD_ORG_ID,mi.M_WAREHOUSE_ID,mil.M_LOCATOR_ID,mil.M_Product_ID, mi.MOVEMENTDATE, sum(mil.MovementQty) as SUMQTY,
    MAX(bomQtyOnHandByLocator(mil.M_PRODUCT_ID,mil.M_Locator_ID)) as QtyOnHand,'||PInstance_ID||' as AD_PINSTANCE_ID,SYSDATE as CREATED,'||p_SalesRep_ID||' as AD_User_ID from M_InOut mi 
    INNER JOIN M_INOUTLINE mil on mil.M_INOUT_ID = mi.M_INOUT_ID
    INNER JOIN C_ORderLine col on col.C_ORDERLIne_ID = mil.C_ORDERLIne_ID
    INNER JOIN C_Order co on (co.C_Order_ID = col.REF_Order_ID and co.Docstatus in (''CO'',''CL''))
    where mi.Docstatus in (''CO'',''CL'') and trunc(mi.MOVEMENTDATE) between TO_DATE('''|| TO_CHAR(p_DateFrom,'DD/MM/YYYY')||''',''DD/MM/YYYY'') and TO_DATE('''|| TO_CHAR(p_DateTo,'DD/MM/YYYY')||''',''DD/MM/YYYY'') 
    and mi.ISSOTRX = ''N'' and mi.AD_CLIENT_ID='||p_ADClient_ID||' 
    and (0 = '||p_AD_Org_ID||' OR mi.AD_Org_ID = '||p_AD_Org_ID ||') 
    group by mi.AD_ORG_ID, mi.M_WAREHOUSE_ID, mil.M_LOCATOR_ID, mil.M_Product_ID, mi.MOVEMENTDATE,0,0';
    
            EXECUTE IMMEDIATE 'INSERT INTO ZT_INOUT_RECEIVED
    Select mi.AD_ORG_ID,mil.M_WAREHOUSETO_ID as M_WAREHOUSE_ID ,mil.M_LOCATOR_ID,mil.M_Product_ID, mi.MOVEMENTDATE, sum(mil.MovementQty) as SUMQTY,
    MAX(bomQtyOnHandByLocator(mil.M_PRODUCT_ID,mil.M_Locator_ID)) as QtyOnHand,'||PInstance_ID||' as AD_PINSTANCE_ID,SYSDATE as CREATED,'||p_SalesRep_ID||' as AD_User_ID from M_MOVEMENT mi 
    INNER JOIN M_MOvementLine mil on mil.M_MOvement_ID = mi.M_MOvement_ID and mil.REF_Order_ID is not null
    INNER join M_WAREHOUSE mw on mw.M_WAREHOUSE_ID = mil.M_WAREHOUSETO_ID
    INNER JOIN C_ORderLine col on col.C_ORDER_ID = mil.REF_Order_ID and mil.M_Product_ID = col.M_Product_ID
    where mi.Docstatus in (''CO'',''CL'') and trunc(mi.MOVEMENTDATE) between TO_DATE('''|| TO_CHAR(p_DateFrom,'DD/MM/YYYY')||''',''DD/MM/YYYY'') and TO_DATE('''|| TO_CHAR(p_DateTo,'DD/MM/YYYY')||''',''DD/MM/YYYY'') 
    and mi.AD_CLIENT_ID='||p_ADClient_ID||' 
    and (0 = '||p_AD_Org_ID||' OR mw.AD_Org_ID = '||p_AD_Org_ID ||') 
    group by mi.AD_ORG_ID, mil.M_WAREHOUSETO_ID, mil.M_LOCATOR_ID, mil.M_Product_ID, mi.MOVEMENTDATE,0,0';

    Select Count(*) into v_MbIn from ZT_INOUT_RECEIVED where AD_PINSTANCE_ID = PInstance_ID;
    IF (v_MbIn = 0) THEN 
    EXECUTE IMMEDIATE ('UPDATE AD_PInstance set Result = 1, ErrorMsg = ''Aucune réception !'' where AD_PInstance_ID = '||PInstance_ID);
    RETURN;
    END IF;
    
    --SI C_Order_ID is not null InOut
    EXECUTE IMMEDIATE 'INSERT INTO ZT_ORDER_RECEIVED
    Select SYSDATE as CREATED,col.M_PRODUCT_ID,'||PInstance_ID||' as AD_PINSTANCE_ID, CO.C_ORDER_ID, (col.QTYORDERED-col.QTYDELIVERED) AS QTYTODELIVERED,'||p_SalesRep_ID||' as AD_User_ID  from C_Order co
    inner join C_ORDERLINE col on  (col.C_ORDER_ID = co.C_ORDER_ID)
    INNER jOIN C_ORderLine col2 on (col2.REF_Order_ID = col.C_ORDER_ID)
    INNER JOIN M_INOUTLINE mil on (col2.C_ORDERLIne_ID = mil.C_ORDERLIne_ID)
    INNER JOIN M_INOUT mi on (mi.M_INOUT_ID = mil.M_INOUT_ID and mi.Docstatus in (''CO'',''CL'') 
    and trunc(mi.MOVEMENTDATE) between TO_DATE('''|| TO_CHAR(p_DateFrom,'DD/MM/YYYY')||''',''DD/MM/YYYY'') and TO_DATE('''|| TO_CHAR(p_DateTo,'DD/MM/YYYY')||''',''DD/MM/YYYY'') 
    and mi.ISSOTRX = ''N'' and mi.AD_CLIENT_ID='||p_ADClient_ID||' 
    and (0 = '||p_AD_Org_ID||' OR mi.AD_Org_ID = '||p_AD_Org_ID ||'))
    where (col.QTYORDERED-col.QTYDELIVERED<>0) 
    AND (co.AD_Org_ID ='||p_AD_Org_ID||' OR '||p_AD_Org_ID||' = 0) 
    AND (co.C_Order_ID ='||p_C_Order_ID||' OR '||p_C_Order_ID||' = 0) 
    AND (co.C_BPartner_ID ='||p_C_BPartner_ID||' OR '||p_C_BPartner_ID||' = 0)
    AND (col.M_Product_ID ='||p_M_Product_ID||' OR '||p_M_Product_ID||' = 0) AND co.C_DOCTYPETARGET_ID in (1000120,1000745,1000845,1000848,1000849,1000098,1000847)
     and EXISTS (SELECT 1 FROM ZT_INOUT_RECEIVED zor WHERE zor.M_Product_ID = col.M_Product_ID and zor.AD_PINSTANCE_ID = '||PInstance_ID||')';
     
      --SI C_Order_ID is not null Movement
    EXECUTE IMMEDIATE 'INSERT INTO ZT_ORDER_RECEIVED
    Select SYSDATE as CREATED,col.M_PRODUCT_ID,'||PInstance_ID||' as AD_PINSTANCE_ID, CO.C_ORDER_ID, (col.QTYORDERED-col.QTYDELIVERED) AS QTYTODELIVERED,'||p_SalesRep_ID||' as AD_User_ID  from C_Order co
    inner join C_ORDERLINE col on  (col.C_ORDER_ID = co.C_ORDER_ID)
    INNER JOIN M_MOvementLine mil on (col.C_ORDER_ID = mil.REF_Order_ID and col.M_Product_ID = mil.M_Product_ID)
   INNER join M_WAREHOUSE mw on mw.M_WAREHOUSE_ID = mil.M_WAREHOUSETO_ID
    INNER JOIN M_MOVEMENT mi on (mi.M_MOVEMENT_ID = mil.M_MOVEMENT_ID and mi.Docstatus in (''CO'',''CL'') 
    and trunc(mi.MOVEMENTDATE) between TO_DATE('''|| TO_CHAR(p_DateFrom,'DD/MM/YYYY')||''',''DD/MM/YYYY'') and TO_DATE('''|| TO_CHAR(p_DateTo,'DD/MM/YYYY')||''',''DD/MM/YYYY'') 
    and mi.AD_CLIENT_ID='||p_ADClient_ID||' 
    and (0 = '||p_AD_Org_ID||' OR mw.AD_Org_ID = '||p_AD_Org_ID ||'))
    where (col.QTYORDERED-col.QTYDELIVERED<>0) 
    AND (co.AD_Org_ID ='||p_AD_Org_ID||' OR '||p_AD_Org_ID||' = 0) 
    AND (co.C_Order_ID ='||p_C_Order_ID||' OR '||p_C_Order_ID||' = 0) 
    AND (co.C_BPartner_ID ='||p_C_BPartner_ID||' OR '||p_C_BPartner_ID||' = 0)
    AND (col.M_Product_ID ='||p_M_Product_ID||' OR '||p_M_Product_ID||' = 0) AND co.C_DOCTYPETARGET_ID in (1000120,1000745,1000845,1000848,1000849,1000098,1000847)
     and EXISTS (SELECT 1 FROM ZT_INOUT_RECEIVED zor WHERE zor.M_Product_ID = col.M_Product_ID and zor.AD_PINSTANCE_ID = '||PInstance_ID||')';
   
    Select Count(*) into v_MbIn from ZT_ORDER_RECEIVED where AD_PINSTANCE_ID = PInstance_ID;
    IF (v_MbIn = 0) THEN 
    EXECUTE IMMEDIATE ('UPDATE AD_PInstance set Result = 1, ErrorMsg = ''Rien à livrer !'' where AD_PInstance_ID = '||PInstance_ID);
    RETURN;
    END IF;
    
   EXECUTE IMMEDIATE ('UPDATE AD_PInstance set Result = 1, ErrorMsg = ''Traitement Ok ! '' where AD_PInstance_ID = '||PInstance_ID);

  END STATUTCMDCLIENT;
  
    CREATE OR REPLACE FORCE VIEW "ZRV_STATUSCMDCLIENT" ("AD_CLIENT_ID", "AD_ORG_ID", "NAME", "C_ORDER_ID", "DOCUMENTNO", "C_BPARTNER_ID", "BPARTNERNAME", "CREATED", "CREATEDBY", "ISACTIVE", "UPDATED", "UPDATEDBY", "M_PRODUCT_ID", "PRODUCTVALUE", "SSSFAMILLE", "QTYTODELIVERED", "SUMQTY", "PHONE", "CITY", "DATERECEIVED", "QTYONHAND", "AD_PINSTANCE_ID", "SALESREP_ID") AS 
  Select CO.AD_CLIENT_ID , CO.AD_ORG_ID,AO.NAME, CO.C_ORDER_ID ,CO.DocumentNo,CO.C_BPARTNER_ID,MAX(TRIM(cb.Name||' '||cb.name2)) as BPARTNERNAME, CO.CREATED , CO.CREATEDBY , CO.ISACTIVE , CO.UPDATED , CO.UPDATEDBY,
COl.M_PRODUCT_ID ,mp.value as PRODUCTVALUE,zf.Name as SSSFAMILLE,ZOR.QTYTODELIVERED as QtyToDelivered,ZIR.SUMQTY,max(GETPHONECONCAT(CO.C_BPARTNER_ID)) as PHONE,cl.City,
ZIR.MOVEMENTDATE AS DATERECEIVED,ZIR.QtyOnHand as QtyOnHand,ZOR.AD_PINSTANCE_ID,ZOR.AD_User_ID as SALESREP_ID
from ZT_ORDER_RECEIVED ZOR
INNER JOIN C_ORDER CO on CO.C_ORDER_ID = zor.C_ORDER_ID
INNER JOIN AD_ORG AO on AO.AD_ORG_ID = CO.AD_ORG_ID
INNER JOIN C_BPARTNER_LOCATION cbl on cbl.C_BPARTNER_LOCATION_ID =CO.C_BPARTNER_LOCATION_ID
INNER JOIN C_LOCATION cl on cl.C_LOCATION_ID = cbl.C_LOCATION_ID
INNER JOIN C_BPARTNER cb on cb.C_BPARTNER_ID = CO.C_BPARTNER_ID
INNER JOIN ZT_INOUT_RECEIVED ZIR on ZIR.AD_PINSTANCE_ID = ZOR.AD_PINSTANCE_ID and ZIR.M_PRODUCT_ID = ZOR.M_PRODUCT_ID
INNER JOIN C_ORDERLINE COl on (COl.C_ORDER_ID = CO.C_ORDER_ID and COl.M_PRODUCT_ID = ZOR.M_PRODUCT_ID)
INNER JOIN m_Product mp on (mp.M_PRODUCT_ID = COl.M_PRODUCT_ID and mp.ISSTOCKED='Y')
LEFT JOIN Z_S_S_S_Famille zf on zf.Z_S_S_S_FAMILLE_ID = mp.Z_S_S_S_FAMILLE_ID 
group by CO.AD_CLIENT_ID, CO.AD_ORG_ID,AO.NAME, CO.C_ORDER_ID, CO.DocumentNo, CO.C_BPARTNER_ID, 
 CO.CREATED, CO.CREATEDBY, CO.ISACTIVE, CO.UPDATED, 
CO.UPDATEDBY, COl.M_PRODUCT_ID, mp.value, zf.Name, ZOR.QTYTODELIVERED, 
ZIR.SUMQTY, cl.City, ZIR.MOVEMENTDATE, ZIR.QtyOnHand,ZOR.AD_PINSTANCE_ID,ZOR.AD_User_ID;
  