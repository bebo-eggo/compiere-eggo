call syncposdatabase('create or replace FUNCTION getTRFTINOUT090(
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
from M_MOVEMENTLINECONFIRM@CENTRALE mmlc 
inner join M_MOVEMENTCONFIRM@CENTRALE mm on mmlc.M_MOVEMENTCONFIRM_ID = mm.M_MOVEMENTCONFIRM_ID
inner join M_MOVEMENTLINE@CENTRALE mml on mml.M_MOVEMENTLINE_ID = mmlc.M_MOVEMENTLINE_ID
inner join M_LOCATOR@CENTRALE ml on (((INOUT = 0 and ml.M_LOCATOR_ID = mml.M_LOCATORTO_ID) OR (INOUT = 1 and ml.M_LOCATOR_ID = mml.M_LOCATOR_ID)) )
where  mm.DocStatus in (''DR'',''IP'') and  ml.AD_Org_ID =  ORG_ID and mml.M_PRODUCT_ID=PRODUCT_ID
group by ml.AD_Org_ID, mml.M_PRODUCT_ID),0) INTO qtyTRFTREC from DUAL;

Select COALESCE((Select sum (mml.MOVEMENTQTY)
from M_MOVEMENTLINE@CENTRALE mml
inner join M_MOVEMENT@CENTRALE mm on mml.M_MOVEMENT_ID = mm.M_MOVEMENT_ID
inner join M_LOCATOR@CENTRALE ml on (((INOUT = 0 and ml.M_LOCATOR_ID = mml.M_LOCATORTO_ID) OR (INOUT = 1 and ml.M_LOCATOR_ID = mml.M_LOCATOR_ID))  )
where  mm.DocStatus in (''DR'',''IP'') and  ml.AD_Org_ID =  ORG_ID and mml.M_PRODUCT_ID=PRODUCT_ID and not exists (Select 1 from M_MOVEMENTLINECONFIRM@CENTRALE mmlc where mmlc.M_MOVEMENTLINE_ID = mml.M_MOVEMENTLINE_ID)
group by ml.AD_Org_ID, mml.M_PRODUCT_ID),0) INTO qtyTRFT from DUAL;

--1114287
RETURN NVL(qtyTRFTREC,0)+NVL(qtyTRFT,0);
--  EXCEPTION
  --WHEN NO_DATA_FOUND THEN
 --   RETURN 0;
  END getTRFTINOUT090;');
  
  create or replace FUNCTION getTRFTINOUT090(
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
inner join M_LOCATOR ml on (((INOUT = 0 and ml.M_LOCATOR_ID = mml.M_LOCATORTO_ID) OR (INOUT = 1 and ml.M_LOCATOR_ID = mml.M_LOCATOR_ID)) )
where  mm.DocStatus in ('DR','IP') and  ml.AD_Org_ID =  ORG_ID and mml.M_PRODUCT_ID=PRODUCT_ID
group by ml.AD_Org_ID, mml.M_PRODUCT_ID),0) INTO qtyTRFTREC from DUAL;

Select COALESCE((Select sum (mml.MOVEMENTQTY)
from M_MOVEMENTLINE mml
inner join M_MOVEMENT mm on mml.M_MOVEMENT_ID = mm.M_MOVEMENT_ID
inner join M_LOCATOR ml on (((INOUT = 0 and ml.M_LOCATOR_ID = mml.M_LOCATORTO_ID) OR (INOUT = 1 and ml.M_LOCATOR_ID = mml.M_LOCATOR_ID))  )
where  mm.DocStatus in ('DR','IP') and  ml.AD_Org_ID =  ORG_ID and mml.M_PRODUCT_ID=PRODUCT_ID and not exists (Select 1 from M_MOVEMENTLINECONFIRM mmlc where mmlc.M_MOVEMENTLINE_ID = mml.M_MOVEMENTLINE_ID)
group by ml.AD_Org_ID, mml.M_PRODUCT_ID),0) INTO qtyTRFT from DUAL;

--1114287
RETURN NVL(qtyTRFTREC,0)+NVL(qtyTRFT,0);
--  EXCEPTION
  --WHEN NO_DATA_FOUND THEN
 --   RETURN 0;
  END getTRFTINOUT090;
  
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
from M_MOVEMENTLINECONFIRM@CENTRALE mmlc 
inner join M_MOVEMENTCONFIRM@CENTRALE mm on mmlc.M_MOVEMENTCONFIRM_ID = mm.M_MOVEMENTCONFIRM_ID
inner join M_MOVEMENTLINE@CENTRALE mml on mml.M_MOVEMENTLINE_ID = mmlc.M_MOVEMENTLINE_ID
inner join M_LOCATOR@CENTRALE ml on (((INOUT = 0 and ml.M_LOCATOR_ID = mml.M_LOCATORTO_ID) OR (INOUT = 1 and ml.M_LOCATOR_ID = mml.M_LOCATOR_ID)) and ml.ISPOS = ''Y'' )
where  mm.DocStatus in (''DR'',''IP'') and  ml.AD_Org_ID =  ORG_ID and mml.M_PRODUCT_ID=PRODUCT_ID
group by ml.AD_Org_ID, mml.M_PRODUCT_ID),0) INTO qtyTRFTREC from DUAL;

Select COALESCE((Select sum (mml.MOVEMENTQTY)
from M_MOVEMENTLINE@CENTRALE mml
inner join M_MOVEMENT@CENTRALE mm on mml.M_MOVEMENT_ID = mm.M_MOVEMENT_ID
inner join M_LOCATOR@CENTRALE ml on (((INOUT = 0 and ml.M_LOCATOR_ID = mml.M_LOCATORTO_ID) OR (INOUT = 1 and ml.M_LOCATOR_ID = mml.M_LOCATOR_ID)) and ml.ISPOS = ''Y'' )
where  mm.DocStatus in (''DR'',''IP'') and  ml.AD_Org_ID =  ORG_ID and mml.M_PRODUCT_ID=PRODUCT_ID and not exists (Select 1 from M_MOVEMENTLINECONFIRM@CENTRALE mmlc where mmlc.M_MOVEMENTLINE_ID = mml.M_MOVEMENTLINE_ID)
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
inner join M_LOCATOR ml on (((INOUT = 0 and ml.M_LOCATOR_ID = mml.M_LOCATORTO_ID) OR (INOUT = 1 and ml.M_LOCATOR_ID = mml.M_LOCATOR_ID)) and ml.ISPOS = ''Y'' )
where  mm.DocStatus in (''DR'',''IP'') and  ml.AD_Org_ID =  ORG_ID and mml.M_PRODUCT_ID=PRODUCT_ID
group by ml.AD_Org_ID, mml.M_PRODUCT_ID),0) INTO qtyTRFTREC from DUAL;

Select COALESCE((Select sum (mml.MOVEMENTQTY)
from M_MOVEMENTLINE mml
inner join M_MOVEMENT mm on mml.M_MOVEMENT_ID = mm.M_MOVEMENT_ID
inner join M_LOCATOR ml on (((INOUT = 0 and ml.M_LOCATOR_ID = mml.M_LOCATORTO_ID) OR (INOUT = 1 and ml.M_LOCATOR_ID = mml.M_LOCATOR_ID)) and ml.ISPOS = ''Y'' )
where  mm.DocStatus in (''DR'',''IP'') and  ml.AD_Org_ID =  ORG_ID and mml.M_PRODUCT_ID=PRODUCT_ID and not exists (Select 1 from M_MOVEMENTLINECONFIRM@CENTRALE mmlc where mmlc.M_MOVEMENTLINE_ID = mml.M_MOVEMENTLINE_ID)
group by ml.AD_Org_ID, mml.M_PRODUCT_ID),0) INTO qtyTRFT from DUAL;

--1114287
RETURN NVL(qtyTRFTREC,0)+NVL(qtyTRFT,0);
--  EXCEPTION
  --WHEN NO_DATA_FOUND THEN
 --   RETURN 0;
  END getTRFTINOUT;
 
create or replace FUNCTION bomQtyOnConsignbylocator(
      Product_ID IN NUMBER,
      Client_ID IN NUMBER ,
      Locator_ID IN NUMBER )
    RETURN NUMBER
  AS
    Quantity     NUMBER := 99999;
    IsBOM        CHAR(1);
    IsStocked    CHAR(1);
    IsVerified   CHAR(1);
    ProductType  CHAR(1);
    ProductQty   NUMBER;
    StdPrecision NUMBER;
    CURSOR CUR_BOM
    IS
      SELECT bp.M_ProductBOM_ID,
        bp.BOMQty,
        p.IsBOM,
        p.IsStocked,
        p.ProductType,
        p.IsVerified
      FROM M_BOM b,
        M_Product p,
        M_BOMProduct bp
      WHERE bp.M_ProductBOM_ID=p.M_Product_ID
      AND b.M_Product_ID      =Product_ID
      AND bp.M_BOM_ID         = b.M_BOM_ID
      AND bp.IsActive         = 'Y'
      AND b.BOMType           = 'A'
      AND b.BOMUse            = 'A'
      AND b.IsActive          = 'Y';
  BEGIN
    IF (Locator_ID IS NULL or Client_ID = 1000000 OR Client_ID = 1000024) THEN
      RETURN 0;
    END IF;
    BEGIN
      SELECT IsBOM,
        ProductType,
        IsStocked,
        IsVerified
      INTO IsBOM,
        ProductType,
        IsStocked,
        IsVerified
      FROM M_Product
      WHERE M_Product_ID=Product_ID;
    EXCEPTION
    WHEN OTHERS THEN
      RETURN 0;
    END;
    IF (IsBOM='N' AND (ProductType<>'I' OR IsStocked='N')) THEN
      RETURN Quantity;
    ELSIF (IsStocked='Y') THEN
      SELECT NVL(SUM(Qty), 0)
      INTO ProductQty
      FROM M_StorageDetail s
      WHERE M_Product_ID=Product_ID
      AND M_Locator_ID  IN (SELECT M_Locator_ID from M_Locator Where (Select MAX(M_WareHouse_ID) from M_Locator ml where ml.M_Locator_id = Locator_ID) =M_Locator.M_WareHouse_ID and Z_LocatorType_ID in
                             (select Z_LocatorType_ID from Z_LocatorType Where Upper(Description) like 'CONS%' ) )
      AND QtyType       ='H';
      RETURN ProductQty;
    END IF;
    IF (IsVerified='N') THEN
      RETURN 0;
    END IF;
    FOR bom IN CUR_BOM
    LOOP
      IF (bom.ProductType = 'I' AND bom.IsStocked = 'Y') THEN
        SELECT NVL(SUM(Qty), 0)
        INTO ProductQty
        FROM M_StorageDetail s
        WHERE M_Product_ID=bom.M_ProductBOM_ID
        AND QtyType       ='H'
        AND M_Locator_ID  IN (SELECT M_Locator_ID from M_Locator Where (Select MAX(M_WareHouse_ID) from M_Locator ml where ml.M_Locator_id = Locator_ID) =M_Locator.M_WareHouse_ID  and Z_LocatorType_ID in
                             (select Z_LocatorType_ID from Z_LocatorType Where Upper(Description) like 'CONS%' ) );
        SELECT NVL(MAX(u.StdPrecision), 0)
        INTO StdPrecision
        FROM C_UOM u,
          M_Product p
        WHERE u.C_UOM_ID  =p.C_UOM_ID
        AND p.M_Product_ID=bom.M_ProductBOM_ID;
        ProductQty       := ROUND (ProductQty/bom.BOMQty, StdPrecision);
        IF (ProductQty    < Quantity) THEN
          Quantity       := ProductQty;
        END IF;
      ELSIF (bom.IsBOM = 'Y' AND bom.IsVerified = 'Y') THEN
        ProductQty    := bomQtyOnConsign (bom.M_ProductBOM_ID, Client_ID, Locator_ID);
        IF (ProductQty < Quantity) THEN
          Quantity    := ProductQty;
        END IF;
      END IF;
    END LOOP;
    IF (Quantity > 0) THEN
      SELECT NVL(MAX(u.StdPrecision), 0)
      INTO StdPrecision
      FROM C_UOM u,
        M_Product p
      WHERE u.C_UOM_ID  =p.C_UOM_ID
      AND p.M_Product_ID=Product_ID;
      RETURN ROUND (Quantity, StdPrecision);
    END IF;
    RETURN 0;
  END bomQtyOnConsignbylocator;  
  
 create or replace FUNCTION bomQtyAvailableByLocator(
      Product_ID   IN NUMBER,
      Warehouse_ID IN NUMBER,
      Locator_ID   IN NUMBER )
    RETURN NUMBER
  AS
    productClient_ID               NUMBER;
    client_ID                      NUMBER;
    org_id                         NUMBER;
    QtyTftOut                      NUMBER;
  begin
    
    select ad_client_id 
    into productClient_ID
    from m_product where m_product_id=Product_ID;
    select to_number(msgText) 
    into client_ID
    from ad_message where value='EGGO_CLIENT_ID';
    select ad_org_id 
    into org_id
    from m_locator where m_locator_id=Locator_ID;
  
    if productClient_ID <> client_ID
    then
      return bomqtyonhandbylocator(product_id, locator_id) - bomqtyreservedbylocator(product_id, warehouse_id, locator_id)
      -- +  bomQtyTftbylocator(product_id, warehouse_id, locator_id) ZCOM 03062014 Tarak dit non
      - BOMQTYONCONSIGNBYLOCATOR(product_id, productClient_ID, locator_id) 
      + BOMQTYTFTBYLOCATOR(product_id, warehouse_id, locator_id);
    else
      return bomqtyonhandbylocator(product_id, locator_id) - bomqtyreservedbylocator(product_id, warehouse_id, locator_id);
    end if;
  END bomQtyAvailableByLocator;
  
create or replace FUNCTION bomQtyTftByLocator(
      Product_ID   IN NUMBER,
      Warehouse_ID IN NUMBER,
      Locator_ID   IN NUMBER )
    RETURN NUMBER
  as
    v_qty NUMBER;
    qtyTRFT   NUMBER;
    qtyTRFTREC   NUMBER;
  begin
    qtyTRFT:=0;
    qtyTRFTREC:=0;
    select nvl(sum(zzz.somme),0)
    into v_qty
    from (select nvl(sum((-1)*ml.movementqty),0) as somme 
      from  m_movementline ml
      inner join m_movement m on m.m_movement_id = ml.m_movement_id
      inner join m_locator l on (ml.m_locator_id=l.m_locator_id)
      where m.docstatus  in ('DR','IP') and not exists (Select 1 from M_MOVEMENTLINECONFIRM mmlc where mmlc.M_MOVEMENTLINE_ID = ml.M_MOVEMENTLINE_ID)
      and l.m_warehouse_id =warehouse_id
      and l.m_locator_id =locator_id
      and ml.m_product_id  =product_id
      union all 
      select nvl(sum((+1)*ml.movementqty),0) as somme 
      from  m_movementline ml
      inner join m_movement m on m.m_movement_id = ml.m_movement_id
      inner join m_locator l on (ml.m_locatorto_id=l.m_locator_id)
      where m.docstatus in ('DR','IP') and not exists (Select 1 from M_MOVEMENTLINECONFIRM mmlc where mmlc.M_MOVEMENTLINE_ID = ml.M_MOVEMENTLINE_ID)
      and l.m_warehouse_id =warehouse_id
      and l.m_locator_id =locator_id
      and ml.m_product_id  =product_id
      UNION ALL
      select nvl(sum((-1)*ml.CONFIRMEDQTY),0) as somme 
      from  m_movementlineConfirm ml
      inner join m_movementConfirm m on m.m_movementConfirm_id = ml.m_movementConfirm_id
      inner join M_MOVEMENTLINE mml on mml.M_MOVEMENTLINE_ID = ml.M_MOVEMENTLINE_ID
      inner join m_locator l on (mml.m_locator_id=l.m_locator_id)
      where m.docstatus  in ('DR','IP') 
      and l.m_warehouse_id =warehouse_id
      and l.m_locator_id =locator_id
      and mml.m_product_id  =product_id
      UNION ALL
      select nvl(sum((+1)*ml.CONFIRMEDQTY),0) as somme 
      from  m_movementlineCONFIRM ml
      inner join m_movementCONFIRM m on m.m_movementConfirm_id = ml.m_movementConfirm_id
      inner join M_MOVEMENTLINE mml on mml.M_MOVEMENTLINE_ID = ml.M_MOVEMENTLINE_ID
      inner join m_locator l on (mml.m_locatorto_id=l.m_locator_id)
      where m.docstatus in ('DR','IP') 
      and l.m_warehouse_id =warehouse_id
      and l.m_locator_id =locator_id
      and mml.m_product_id  =product_id) zzz;
   return v_qty;
  END bomQtyTftByLocator;
  
  call syncposdatabase('CREATE INDEX IDX_ISEGGO ON C_BPARTNER_LOCATION (ISEGGO)');
  
    call syncposdatabase('create or replace FUNCTION getavailableqty090(
      PRODUCT_ID in NUMBER)
    RETURN NUMBER
  AS
    qtyOH   NUMBER;
    qtyR    NUMBER;
    qtyCOH  NUMBER;
    qtyOUT  NUMBER;
  BEGIN
  select nvl(sum(qty),0) INTO qtyOH from M_StorageDetail 
  inner join M_LOCATOR ml on ml.M_LOCATOR_ID = M_StorageDetail.M_LOCATOR_ID and upper(ml.VALUE) not like ''%SAV%''
  where M_StorageDetail.ad_org_id=1000417 and M_StorageDetail.m_product_id=PRODUCT_ID and M_StorageDetail.m_attributesetinstance_id=0 AND qtytype=''H'';
  select nvl(sum(qty),0) INTO qtyR from M_StorageDetail where  ad_org_id=1000417 and m_product_id=PRODUCT_ID and m_attributesetinstance_id=0 AND qtytype=''R'';
  RETURN NVL(qtyOH,0) - NVL(qtyR,0) -NVL(GETTRFTINOUT090(1000417,PRODUCT_ID,1),0) +NVL(GETTRFTINOUT090(1000417,PRODUCT_ID,0),0);
  EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RETURN 0;
  END getavailableqty090;');
  
  call syncposdatabase('create or replace FUNCTION getInfosBDV(BDV_ID in number,
      ORG_ID in number, TAX_ID in number,
      Infos in Varchar2)
    RETURN NUMBER
  AS
    sqlString VARCHAR2(2000);
    OUTVALUE   NUMBER;
    qtyR    NUMBER;
    qtyCOH  NUMBER;
    qtyOUT  NUMBER;
  BEGIN
  if(Infos=''TOTAL_TTC'') THEN sqlString:=''Select ROUND(sum(nvl(ipol.qtyentered  *ipol.priceentered,0)),2)  '';
  ELSIF(Infos=''RATE'') THEN sqlString:= ''Select ct.rate  '';
  ELSIF(Infos=''TOTAL_HTVA'') THEN sqlString:= ''Select sum(ROUND(((ipol.qtyentered*ipol.priceentered)/(1+(ct.rate/100))),2))  '';
  ELSIF(Infos=''TOTAL_TVA'') THEN sqlString:= ''Select ROUND(sum(nvl(ipol.qtyentered  *ipol.priceentered,0)),2) - sum(ROUND(((ipol.qtyentered*ipol.priceentered)/(1+(ct.rate/100))),2))  '';
  ELSIF(Infos=''PAYAMT'') THEN sqlString:=''Select NVL( (Select sum(ipp.PAYAMT) from I_POSORDERPAYMENT ipp where ipp.I_POSORDER_ID = ipo.I_POSORDER_ID and ipp.AD_Org_ID = ipo.AD_ORG_ID),0)  '';
  ELSE
    RETURN 0;
  END IF;
sqlString:=sqlString||'' from I_POSORDER ipo 
inner join I_POSORDERLINE ipol on ipol.I_POSORDER_ID = ipo.I_POSORDER_ID and  ipo.AD_ORG_ID = ipol.AD_ORG_ID
inner join C_Tax ct on ct.C_TAX_ID = ipol.C_TAX_ID
where ipo.I_POSORDER_ID = :1 and ipo.AD_Org_ID= :2 and ipol.C_Tax_ID = :3 group by ipo.I_POSORDER_ID, ipo.AD_ORG_ID,ct.rate'';
EXECUTE IMMEDIATE sqlString INTO OUTVALUE USING BDV_ID,ORG_ID,TAX_ID;
  RETURN OUTVALUE;
    END getInfosBDV;');

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
  RETURN qtyOH - qtyR  - qtyCOH;
  EXCEPTION
  WHEN NO_DATA_FOUND THEN 
    RETURN 0;
  END getavailableqty;');
  
call syncposdatabase('DROP INDEX z_pos_31;');
call syncposdatabase('DROP INDEX z_pos_32;');
call syncposdatabase('DROP INDEX z_pos_33;');
call syncposdatabase('create index z_pos_31 on ad_user (upper(TRIM(phone))); '); 
call syncposdatabase('create index z_pos_32 on ad_user (upper(TRIM(phone2)));');  
call syncposdatabase('create index z_pos_33 on ad_user(REPLACE(REPLACE(REPLACE((upper(TRIM(PHONE))),'/'),'.'),' '));');
