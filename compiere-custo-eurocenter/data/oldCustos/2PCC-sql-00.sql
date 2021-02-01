DROP TABLE Z_EXCLUDE_MATCHING;
CREATE TABLE "Z_EXCLUDE_MATCHING" 
( "AD_CLIENT_ID" NUMBER, 
"AD_ORG_ID" NUMBER NOT NULL ENABLE, 
"CREATEDBY" NUMBER, 
"UPDATEDBY" NUMBER, 
"CREATED" DATE, 
"UPDATED" DATE, 
"ISACTIVE" CHAR, 
"RECORD_ID" NUMBER NOT NULL ENABLE, 
"AD_TABLE_ID" NUMBER, 
"AD_PINSTANCE_ID" NUMBER
);
create or replace PROCEDURE ZP_MATCHING_01 (PInstance_ID number) AS
      p_Client_ID  number;
      p_DateTO Date;
      p_Type VARCHAR2(2);
      sql_stm VARCHAR2(10000);
      v_nbO number;
      v_nbR number;
      v_nbF number;
    BEGIN
    --Data Process
    Select adp.AD_Client_ID into p_Client_ID from AD_PINSTANCE_PARA adp where adp.AD_PINSTANCE_ID = PInstance_ID and rownum=1;
    Select adp.P_DATE into p_DateTO from AD_PINSTANCE_PARA adp where adp.AD_PINSTANCE_ID = PInstance_ID and upper(adp.ParameterName) = upper('Date');
    Select adp.P_STRING into p_Type from AD_PINSTANCE_PARA adp where adp.AD_PINSTANCE_ID = PInstance_ID and upper(adp.ParameterName) = upper('MatchType');
    --OA
    if(p_Type='3F' OR p_Type='9A') then
    sql_stm :='INSERT INTO Z_EXCLUDE_MATCHING 
      SELECT distinct '||p_Client_ID||' as AD_Client_ID,lin.AD_Org_ID,100 as createdBy, 100 as UpdatedBy, sysdate as Created, Sysdate as Updated, ''Y'' as IsActive, hdr.C_INVOICE_ID as RECORD_ID, 
      MAX(318) as AD_TABLE_ID, :PInstance_ID as AD_PINSTANCE_ID
      FROM C_Invoice hdr INNER JOIN C_BPartner bp ON (hdr.C_BPartner_ID     =bp.C_BPartner_ID AND hdr.DocStatus        IN( ''CO'', ''CL'') AND bp.C_BPartner_ID NOT IN (1054183,1813233,2036759))
      LEFT JOIN C_ORDER co ON (co.C_ORDER_ID = hdr.C_ORDER_ID)
      INNER JOIN C_InvoiceLine lin  ON (hdr.C_Invoice_ID=lin.C_Invoice_ID)
      INNER JOIN AD_Org ao ON ao.AD_Org_ID = lin.AD_Org_ID
      INNER JOIN M_Product p ON (lin.M_Product_ID=p.M_Product_ID)
      INNER JOIN C_DocType dt ON (hdr.C_DocType_ID=dt.C_DocType_ID AND dt.DocBaseType IN (''API'',''APC''))
      FULL JOIN M_MatchInv mi ON (lin.C_InvoiceLine_ID=mi.C_InvoiceLine_ID)
      WHERE hdr.AD_Client_ID   IN (:p_Client_ID) and trunc(hdr.DATEINVOICED) < :todate
      and not exists (Select 1 from Z_EXCLUDE_MATCHING zem where zem.RECORD_ID = hdr.C_INVOICE_ID and zem.AD_Table_ID = 318)
      GROUP BY hdr.DocumentNo,
        hdr.DateInvoiced, bp.Name, lin.Line, lin.C_InvoiceLine_ID, p.Name, p.M_Product_ID, lin.QtyInvoiced, hdr.C_Invoice_ID, bp.C_BPartner_ID, co.DocumentNo,  lin.AD_Org_ID,  ao.Name 
      HAVING lin.QtyInvoiced<>SUM(NVL(mi.Qty,0))' ;
    EXECUTE IMMEDIATE sql_stm using PInstance_ID,p_Client_ID,p_DateTO;
    end if;
    --Recept
    if(p_Type='2R' OR p_Type='9A') then
    sql_stm := 'INSERT INTO Z_EXCLUDE_MATCHING SELECT distinct '||p_Client_ID||' as AD_Client_ID,hdr.AD_Org_ID,100 as createdBy, 100 as UpdatedBy, sysdate as Created, Sysdate as Updated, ''Y'' as IsActive, hdr.M_InOut_ID as RECORD_ID, 
      MAX(319) as AD_TABLE_ID, :PInstance_ID as AD_PINSTANCE_ID
      FROM M_InOut hdr 
      INNER JOIN C_BPartner bp ON (hdr.C_BPartner_ID=bp.C_BPartner_ID AND hdr.DocStatus   IN (''CO'',''CL'') and bp.C_BPartner_ID NOT IN (1054183,1813233,2036759))
      INNER JOIN M_InOutLine lin ON (hdr.M_InOut_ID=lin.M_InOut_ID) 
      LEFT JOIN C_Order co ON (co.C_Order_ID = hdr.C_Order_ID) 
      INNER JOIN M_Product p ON (lin.M_Product_ID=p.M_Product_ID) 
      INNER JOIN C_DocType dt ON (hdr.C_DocType_ID = dt.C_DocType_ID AND dt.DocBaseType   =''MMR'')
      FULL JOIN M_MatchInv m ON (lin.M_InOutLine_ID=m.M_InOutLine_ID )
      WHERE hdr.AD_Client_ID IN (:p_Client_ID) and trunc(hdr.MOVEMENTDATE) < :todate
      and not exists (Select 1 from Z_EXCLUDE_MATCHING zem where zem.RECORD_ID = hdr.M_InOut_ID and zem.AD_Table_ID = 319)
      GROUP BY hdr.DocumentNo,
        hdr.M_InOut_ID, hdr.M_Warehouse_ID, hdr.MovementDate, bp.name,bp.C_BPartner_ID,hdr.C_BPartner_ID,lin.Line,lin.M_InOutLine_ID,hdr.AD_Org_ID,p.Name,hdr.POReference,p.M_Product_ID,lin.MovementQty,co.DocumentNo
    HAVING lin.MovementQty<>SUM(NVL(m.Qty,0))';
     EXECUTE IMMEDIATE sql_stm using PInstance_ID,p_Client_ID,p_DateTO;
    end if;
    --Fact
    if(p_Type='1O' OR p_Type='9A') then
    sql_stm :='INSERT INTO Z_EXCLUDE_MATCHING 
    SELECT distinct '||p_Client_ID||' as AD_Client_ID,hdr.AD_Org_ID,100 as createdBy, 100 as UpdatedBy, sysdate as Created, Sysdate as Updated, ''Y'' as IsActive, hdr.C_Order_ID as RECORD_ID, 
    MAX(259) as AD_TABLE_ID, :PInstance_ID as AD_PINSTANCE_ID
    FROM C_Order hdr
    INNER JOIN C_BPartner bp ON (hdr.C_BPartner_ID=bp.C_BPartner_ID AND hdr.DocStatus   IN(''CO'',''CL'') and bp.C_BPartner_ID NOT IN (1054183,1813233,2036759))
    INNER JOIN M_WAREHOUSE mw ON MW.M_WAREHOUSE_ID = hdr.M_WAREHOUSE_ID 
    INNER JOIN C_OrderLine lin ON (hdr.C_Order_ID=lin.C_Order_ID)
    INNER JOIN M_Product p ON (lin.M_Product_ID=p.M_Product_ID) 
    INNER JOIN C_DocType dt ON (hdr.C_DocType_ID=dt.C_DocType_ID AND dt.DocBaseType  =''POO'')
    LEFT JOIN
     (SELECT getSUM_QTY_MPO( col.C_OrderLine_ID) AS qty,
       col.C_Orderline_ID
     FROM C_OrderLine col
     ) mo ON mo.C_Orderline_ID  = lin.C_Orderline_ID
      WHERE hdr.AD_Client_ID IN (:p_Client_ID) and trunc(hdr.DATEORDERED) < :todate 
      and not exists (Select 1 from Z_EXCLUDE_MATCHING zem where zem.RECORD_ID = hdr.C_Order_ID and zem.AD_Table_ID = 259)
    GROUP BY hdr.C_Order_ID,  hdr.DocumentNo,  hdr.DateOrdered,  bp.Name,  bp.C_BPartner_ID,  mw.name,  lin.Line,  lin.C_OrderLine_ID,  p.Name,  p.M_Product_ID,hdr.AD_Org_ID, lin.QtyOrdered
    HAVING lin.QtyOrdered<>SUM(COALESCE(mo.Qty,0))';
     EXECUTE IMMEDIATE sql_stm using PInstance_ID,p_Client_ID,p_DateTO;
    end if;

    select count(*) into v_nbO from Z_EXCLUDE_MATCHING where AD_PINSTANCE_ID = PInstance_ID and AD_TABLE_ID = 259;
    select count(*) into v_nbR from Z_EXCLUDE_MATCHING where AD_PINSTANCE_ID = PInstance_ID and AD_TABLE_ID = 319;
    select count(*) into v_nbF from Z_EXCLUDE_MATCHING where AD_PINSTANCE_ID = PInstance_ID and AD_TABLE_ID = 318;
COMMIT;
      
      EXECUTE IMMEDIATE ('UPDATE AD_PInstance set Result = 1, ErrorMsg = ''OA : '||v_nbO||', Receptions : '||v_nbR||', Factures : '||v_nbF||''' where AD_PInstance_ID = '||PInstance_ID);
   END ZP_MATCHING_01;
   /
 CREATE INDEX "IDX_MATCHING_01" ON "Z_EXCLUDE_MATCHING" ("RECORD_ID", "AD_TABLE_ID");
 update AD_INFOWINDOW set OTHERCLAUSE = 'and not exists (Select 1 from Z_EXCLUDE_MATCHING zem where zem.RECORD_ID = hdr.M_InOut_ID and zem.AD_Table_ID = 319) '||OTHERCLAUSE where AD_INFOWINDOW_ID = 114;
 update AD_INFOWINDOW set OTHERCLAUSE = 'and not exists (Select 1 from Z_EXCLUDE_MATCHING zem where zem.RECORD_ID = hdr.C_INVOICE_ID and zem.AD_Table_ID = 318)  '||OTHERCLAUSE where AD_INFOWINDOW_ID = 112;
 update AD_INFOWINDOW set OTHERCLAUSE = 'and not exists (Select 1 from Z_EXCLUDE_MATCHING zem where zem.RECORD_ID = hdr.C_ORDER_ID and zem.AD_Table_ID = 259)  '||OTHERCLAUSE where AD_INFOWINDOW_ID = 113;