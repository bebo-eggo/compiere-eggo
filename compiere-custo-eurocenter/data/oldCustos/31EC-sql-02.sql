create or replace FUNCTION getOADate(
   p_DatePose in Date,
   p_BPartner_ID in number
)  	

RETURN DATE 
AS 
v_DELIVERYTIME number;
v_DELIVERYTIMEGA number;
v_retDate Date;
BEGIN     
    Select NVL(DELIVERYTIME,0), NVL(XX_DELIVERYTIMEGA ,0)into v_DELIVERYTIME,v_DELIVERYTIMEGA from C_BPartner where C_BPartner_ID = p_BPartner_ID;
    v_retDate := p_DatePose - v_DELIVERYTIME - v_DELIVERYTIMEGA;

RETURN v_retDate; 
  END getOADate;
/
CREATE OR REPLACE VIEW ZRV_DAEOA_GEN as
Select co.AD_Client_ID,0 as AD_ORg_ID, co.DOCUMENTNO,co.XX_REFOAINTERNE, cb.Name as BPName,co.GrandTotal, col.Line, mp.Value as ProductValue, mp.Name as ProductName, col.QTYORDERED, col.PRICEACTUAL, col.LINENETAMT   
from XX_DATOOA dx
inner join C_Order co on co.C_ORDER_ID = dx.C_ORDER_ID
inner join C_BPartner cb on cb.C_BPARTNER_ID = co.C_BPARTNER_ID
inner join C_OrderLine col on col.C_ORDER_ID = co.C_ORDER_ID 
inner join M_Product mp on mp.M_Product_ID = col.M_Product_ID ;
/

create or replace FUNCTION GETQTYPURCHASED (
      ORDERLINE_Id in NUMBER)
    RETURN NUMBER
  AS
    v_AMT            NUMBER;
  BEGIN
    v_AMT:=1000000;
    SELECT NVL(QTYENTERED,1000000)into v_AMT from ( Select (mrl.QTYENTERED) from C_ORDERLine col 
    inner join M_REQUISITIONLINE mrl ON mrl.REF_ORDERLINE_ID = col.C_ORDERLINE_ID
    where col.C_ORDERLINE_ID = ORDERLINE_Id 
    and exists (select 1 from C_ORDERLine col2 where col2.C_ORDERLINE_ID = mrl.C_OrderLine_ID )) ;
    
    IF(v_AMT=1000000 OR v_AMT is null)then
        Select col.QTYENTERED into v_AMT from C_ORDERLine col 
        inner join C_ORDERLine col2 ON col2.REF_ORDERLINE_ID = col.C_OrderLine_ID
        where col.C_ORDERLINE_ID = ORDERLINE_Id 
        and not exists (select 1 from M_REQUISITIONLINE mrl where mrl.REF_ORDERLINE_ID = col.C_ORDERLINE_ID );
    END IF;
        
    RETURN NVL(v_AMT,0);
  END GETQTYPURCHASED;
  /