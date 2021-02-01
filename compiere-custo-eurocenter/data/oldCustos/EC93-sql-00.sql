call syncposdatabase('create or replace FUNCTION getavailableqty(CLIENT_ID in number,
      ORG_ID in number,
      PRODUCT_ID in NUMBER,
      CONSIGLOCATOR_ID in NUMBER)
    RETURN NUMBER
  AS
    qtyOH   NUMBER;
    qtyR    NUMBER;
    qtyCOH  NUMBER;
    qtyOUT  NUMBER;
  BEGIN
  select nvl(sum(qty),0) INTO qtyOH from M_StorageDetail 
  inner join M_LOCATOR ml on ml.M_LOCATOR_ID = M_StorageDetail.M_LOCATOR_ID and upper(ml.VALUE) not like ''%SAV%'' AND ml.ISPOS = ''Y''
  where M_StorageDetail.ad_client_id=CLIENT_ID and M_StorageDetail.ad_org_id=ORG_ID and M_StorageDetail.m_product_id=PRODUCT_ID and M_StorageDetail.m_attributesetinstance_id=0 AND qtytype=''H'';
  select nvl(sum(qty),0) INTO qtyR from M_StorageDetail inner join M_LOCATOR ml on ml.M_LOCATOR_ID = M_StorageDetail.M_LOCATOR_ID where M_StorageDetail.ad_client_id=CLIENT_ID and M_StorageDetail.ad_org_id=ORG_ID and M_StorageDetail.m_product_id=PRODUCT_ID and M_StorageDetail.m_attributesetinstance_id=0 AND M_StorageDetail.qtytype=''R'' AND ml.ISPOS = ''Y'';
  select nvl(sum(qty),0) INTO qtyCOH from M_StorageDetail where ad_client_id=CLIENT_ID and ad_org_id=ORG_ID and m_product_id=PRODUCT_ID and m_attributesetinstance_id=0 and m_locator_id=CONSIGLOCATOR_ID and qtytype=''H'';
  select nvl(sum(Qty),0) INTO qtyOUT from Z_TransferedQty where ad_client_id=CLIENT_ID and ad_org_id=ORG_ID and m_product_id=PRODUCT_ID;  
  RETURN qtyOH - qtyR - qtyOUT - qtyCOH;
  EXCEPTION
  WHEN NO_DATA_FOUND THEN 
    RETURN 0;
  END getavailableqty;');
  
  call syncposdatabase('create or replace FUNCTION getTRFTINOUT(
      ORG_ID in NUMBER, PRODUCT_ID in NUMBER, INOUT in NUMBER)
    RETURN NUMBER
  AS
    qtyTRFT   NUMBER;
    qtyTRFTREC   NUMBER;
  BEGIN
  qtyTRFT:=0;
  qtyTRFTREC:=0;
  --TRFT IN
Select COALESCE((Select sum (mmlc.CONFIRMEDQTY) 
from M_MOVEMENTLINECONFIRM mmlc 
inner join M_MOVEMENTCONFIRM mm on mmlc.M_MOVEMENTCONFIRM_ID = mm.M_MOVEMENTCONFIRM_ID
inner join M_MOVEMENTLINE mml on mml.M_MOVEMENTLINE_ID = mmlc.M_MOVEMENTLINE_ID
inner join M_LOCATOR ml on (((INOUT = 0 and ml.M_LOCATOR_ID = mml.M_LOCATORTO_ID) OR (INOUT = 1 and ml.M_LOCATOR_ID = mml.M_LOCATOR_ID)) and ml.ISPOS = ''Y'' )
where  mm.DocStatus in (''DR'',''IP'') and  ml.AD_Org_ID =  ORG_ID and mml.M_PRODUCT_ID=PRODUCT_ID
group by ml.AD_Org_ID, mml.M_PRODUCT_ID),0) INTO qtyTRFTREC from DUAL;

Select COALESCE((Select sum (mml.MOVEMENTQTY)
from M_MOVEMENTLINE mml
inner join M_MOVEMENT mm on mml.M_MOVEMENT_ID = mm.M_MOVEMENT_ID
inner join M_LOCATOR ml on (((INOUT = 0 and ml.M_LOCATOR_ID = mml.M_LOCATORTO_ID) OR (INOUT = 1 and ml.M_LOCATOR_ID = mml.M_LOCATOR_ID)) and ml.ISPOS = ''Y'' )
where  mm.DocStatus in (''DR'',''IP'') and  ml.AD_Org_ID =  ORG_ID and mml.M_PRODUCT_ID=PRODUCT_ID and not exists (Select 1 from M_MOVEMENTLINECONFIRM mmlc where mmlc.M_MOVEMENTLINE_ID = mml.M_MOVEMENTLINE_ID)
group by ml.AD_Org_ID, mml.M_PRODUCT_ID),0) INTO qtyTRFT from DUAL;

--1114287
RETURN NVL(qtyTRFTREC,0)+NVL(qtyTRFT,0);
--  EXCEPTION
  --WHEN NO_DATA_FOUND THEN
 --   RETURN 0;
  END getTRFTINOUT;');
  
create or replace FUNCTION getTRFTINOUT(
      ORG_ID in NUMBER, PRODUCT_ID in NUMBER, INOUT in NUMBER)
    RETURN NUMBER
  AS
    qtyTRFT   NUMBER;
    qtyTRFTREC   NUMBER;
  BEGIN
  qtyTRFT:=0;
  qtyTRFTREC:=0;
  --TRFT IN
Select COALESCE((Select sum (mmlc.CONFIRMEDQTY) 
from M_MOVEMENTLINECONFIRM mmlc 
inner join M_MOVEMENTCONFIRM mm on mmlc.M_MOVEMENTCONFIRM_ID = mm.M_MOVEMENTCONFIRM_ID
inner join M_MOVEMENTLINE mml on mml.M_MOVEMENTLINE_ID = mmlc.M_MOVEMENTLINE_ID
inner join M_LOCATOR ml on (((INOUT = 0 and ml.M_LOCATOR_ID = mml.M_LOCATORTO_ID) OR (INOUT = 1 and ml.M_LOCATOR_ID = mml.M_LOCATOR_ID)) and ml.ISPOS = 'Y' )
where  mm.DocStatus in ('DR','IP') and  ml.AD_Org_ID =  ORG_ID and mml.M_PRODUCT_ID=PRODUCT_ID
group by ml.AD_Org_ID, mml.M_PRODUCT_ID),0) INTO qtyTRFTREC from DUAL;

Select COALESCE((Select sum (mml.MOVEMENTQTY)
from M_MOVEMENTLINE mml
inner join M_MOVEMENT mm on mml.M_MOVEMENT_ID = mm.M_MOVEMENT_ID
inner join M_LOCATOR ml on (((INOUT = 0 and ml.M_LOCATOR_ID = mml.M_LOCATORTO_ID) OR (INOUT = 1 and ml.M_LOCATOR_ID = mml.M_LOCATOR_ID)) and ml.ISPOS = 'Y' )
where  mm.DocStatus in ('DR','IP') and  ml.AD_Org_ID =  ORG_ID and mml.M_PRODUCT_ID=PRODUCT_ID and not exists (Select 1 from M_MOVEMENTLINECONFIRM mmlc where mmlc.M_MOVEMENTLINE_ID = mml.M_MOVEMENTLINE_ID)
group by ml.AD_Org_ID, mml.M_PRODUCT_ID),0) INTO qtyTRFT from DUAL;

--1114287
RETURN NVL(qtyTRFTREC,0)+NVL(qtyTRFT,0);
--  EXCEPTION
  --WHEN NO_DATA_FOUND THEN
 --   RETURN 0;
  END getTRFTINOUT;
  
ALTER TABLE Z_POSNUMBER ADD (HOSTNAME NVARCHAR2(50) );
call syncposdatabase('ALTER TABLE Z_POSNUMBER ADD (HOSTNAME NVARCHAR2(50) )');

create or replace PROCEDURE CloseMagPOS (PInstance_ID number) AS
      p_IDInstance number;
      p_ADORG_ID number;
      p_ListeAllPOS varchar2(2);
      p_IsInfo varchar2(2);
      v_SQL Varchar2(500);
      v_LinkName Varchar2(30);
      v_OPENPOS Varchar2(500);
      v_MbIn number;

    BEGIN
    Select adp.P_NUMBER  into p_ADORG_ID from AD_PINSTANCE_PARA adp where adp.AD_PINSTANCE_ID = PInstance_ID and upper(adp.ParameterName) = upper('AD_Org_ID');
    Select adp.P_STRING  into p_ListeAllPOS from AD_PINSTANCE_PARA adp where adp.AD_PINSTANCE_ID = PInstance_ID and upper(adp.ParameterName) = upper('AllPOS');
    Select adp.P_STRING  into p_IsInfo from AD_PINSTANCE_PARA adp where adp.AD_PINSTANCE_ID = PInstance_ID and upper(adp.ParameterName) = upper('IsOnlyInfo');
 
       Select DATABASELINKNAME into v_LinkName from Z_SYNC_DATABASE where AD_ORGTRX_ID = p_ADORG_ID;
      v_SQL:=  'select (LISTAGG(TO_CHAR(CASE WHEN ISCASHIER = ''Y'' then HOSTNAME||''*'' else HOSTNAME end), '', '')WITHIN GROUP (order by HOSTNAME)) POSNUMBERS  from Z_POSNUMBER@'||v_LinkName||' where AD_Org_ID = '||p_ADORG_ID||' and  ISPOSONLINE = ''Y''  group by AD_Org_ID order by AD_Org_ID';
      v_OPENPOS:='Pas de POS';
       IF(p_IsInfo = 'Y') THEN
       EXECUTE IMMEDIATE v_SQL INTO v_OPENPOS;
        EXECUTE IMMEDIATE ('UPDATE AD_PInstance set Result = 1, ErrorMsg = ''POS Ouvert : '||v_OPENPOS||' '' where AD_PInstance_ID = '||PInstance_ID);
        RETURN;
       END IF;
       --Only POS non Caisse
      IF(p_ListeAllPOS = '01') THEN
          EXECUTE IMMEDIATE ('UPDATE Z_POSNUMBER@'||v_LinkName||' set ISPOSONLINE = ''N'' where ISCASHIER = ''N'' and AD_Org_ID = '||p_ADORG_ID);
          EXECUTE IMMEDIATE ('UPDATE Z_POSNUMBER set ISPOSONLINE = ''N'' where ISCASHIER = ''N'' and AD_Org_ID = '||p_ADORG_ID);
        END IF;  
       IF(p_ListeAllPOS = '02') THEN
           EXECUTE IMMEDIATE ('UPDATE Z_POSNUMBER@'||v_LinkName||' set ISPOSONLINE = ''N'' where ISCASHIER = ''Y'' and AD_Org_ID = '||p_ADORG_ID);
        EXECUTE IMMEDIATE ('UPDATE Z_POSNUMBER set ISPOSONLINE = ''N'' where ISCASHIER = ''Y'' and AD_Org_ID = '||p_ADORG_ID);
          END IF;  
         IF(p_ListeAllPOS = '03') THEN
         EXECUTE IMMEDIATE ('UPDATE Z_POSNUMBER@'||v_LinkName||' set ISPOSONLINE = ''N'' where AD_Org_ID = '||p_ADORG_ID);
         EXECUTE IMMEDIATE ('UPDATE Z_POSNUMBER set ISPOSONLINE = ''N'' where AD_Org_ID = '||p_ADORG_ID);
         END IF;
        COMMIT;
      
      EXECUTE IMMEDIATE ('UPDATE AD_PInstance set Result = 1, ErrorMsg = '''||v_LinkName||', POS fermés ('||p_ListeAllPOS||' '' where AD_PInstance_ID = '||PInstance_ID);
   END CloseMagPOS;