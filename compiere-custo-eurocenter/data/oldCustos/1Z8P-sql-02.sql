--Alter Table Z_INV_VALO_DATE ajouter M_PriceList_ID
ALTER TABLE Z_INV_VALO_DATE ADD (M_PRICELIST_ID NUMBER );
--Modif Procedure
create or replace PROCEDURE CreateInvValoDate (PInstance_ID number) AS
      p_AD_Org_ID  number;
      p_Currency_ID  number;
      p_PriceListVersion_ID  number;
      pp_PriceListVersion_ID  number;
      M_CostElement_ID  number;
      p_DateTo       Date;
      p_ADClient_ID  number;
      p_PriceList_ID  number;
      v_MbIn number;
    BEGIN
    --Get Params
    Select adp.P_NUMBER into p_AD_Org_ID from AD_PINSTANCE_PARA adp where adp.AD_PINSTANCE_ID = PInstance_ID and upper(adp.ParameterName) = upper('AD_Org_ID');
    Select 102 into p_Currency_ID from DUAL;
    Select adp.P_NUMBER into p_PriceListVersion_ID from AD_PINSTANCE_PARA adp where adp.AD_PINSTANCE_ID = PInstance_ID and upper(adp.ParameterName) = upper('M_PriceList_Version_ID');
    Select adp.P_NUMBER into M_CostElement_ID from AD_PINSTANCE_PARA adp where adp.AD_PINSTANCE_ID = PInstance_ID and upper(adp.ParameterName) = upper('M_CostElement_ID');
    Select adp.P_DATE into p_DateTo from AD_PINSTANCE_PARA adp where adp.AD_PINSTANCE_ID = PInstance_ID and upper(adp.ParameterName) = upper('DateValue');
    Select adp.P_NUMBER  into p_ADClient_ID from AD_PINSTANCE_PARA adp where adp.AD_PINSTANCE_ID = PInstance_ID and upper(adp.ParameterName) = upper('AD_Client_ID');
    Select adp.P_NUMBER  into p_PriceList_ID from AD_PINSTANCE_PARA adp where adp.AD_PINSTANCE_ID = PInstance_ID and upper(adp.ParameterName) = upper('M_PriceList_ID');
    --Vider la table des inventaires
    Select count(*) into v_MbIn from ALL_TABLES where UPPER(TABLE_NAME) = UPPER('Z_INV_VALO_DATE');
    IF v_MbIn>0 then
       EXECUTE IMMEDIATE 'TRUNCATE table Z_INV_VALO_DATE';
    END IF;
    
    SELECT COUNT(*) into v_MbIn fROm ALL_INDEXES WHERE UPPER(INDEX_NAME) = upper('Z_INV_VALO_DATE_idx');
    IF v_MbIn>0 then 
       EXECUTE IMMEDIATE 'Drop INDEX Z_INV_VALO_DATE_idx';
    END IF;
    SELECT COUNT(*) into v_MbIn fROm ALL_INDEXES WHERE UPPER(INDEX_NAME) = upper('Z_INV_VALO_DATE_idx2');
    IF v_MbIn>0 then 
       EXECUTE IMMEDIATE 'Drop INDEX Z_INV_VALO_DATE_idx2';
    END IF;
    
       IF p_PriceListVersion_ID is null then 
    pp_PriceListVersion_ID:=0;
    else pp_PriceListVersion_ID :=p_PriceListVersion_ID;
    END IF;
    
    --Create table 
    EXECUTE IMMEDIATE 'INSERT INTO Z_INV_VALO_DATE (select max(w.name) as warehousename, max(p.value) as productvalue, max(p.name) as productname, p.m_product_id, w.m_warehouse_id, sum(st.qty) as qty , 
    '|| p_AD_Org_ID ||' as ad_org_id, max(p.m_product_category_id) as m_product_category_id, 0 as cost, 0 as qtyTrx,'||pp_PriceListVersion_ID||' as M_PRICELIST_VERSION_ID,0 as PRICEPO,0 as PRICELIST,0 as PRICESTD,0 as PRICELIMIT,TO_DATE('''|| TO_CHAR(p_DateTo,'DD/MM/YYYY')||''',''DD/MM/YYYY'') as DateValue ,
    '||p_Currency_ID||' AS C_CURRENCY_ID, 0 as COSTAMT, 0 as TOTALAMT,0 as QtyOnHand, '|| p_ADClient_ID||' AS AD_CLIENT_ID, TRUNC(SYSDATE) as Created,TRUNC(SYSDATE) as UPDATED, 100 as CREATEDBY, 100 as UPDATEDBY,
    ''Y'' as ISACTIVE, '||PInstance_ID||' as AD_PInstance_ID,'||M_CostElement_ID||' as M_CostElement_ID,max(ao.Name) as ORGNAME, '||p_PriceList_ID||' as M_PRICELIST_ID
    from m_storagedetail st     
    inner join m_product p on p.m_product_id = st.m_product_id     
    inner join m_locator l on l.m_locator_id = st.m_locator_id   
    inner join m_warehouse w on w.m_warehouse_id =  l.m_warehouse_id   
    inner join AD_org ao on ao.ad_org_id = w.ad_org_id
    where p.ISSTOCKED = ''Y'' and st.qtytype = ''H'' and st.ad_client_id ='|| p_ADClient_ID||'  and (0 = '||p_AD_Org_ID||' OR l.AD_Org_ID = '|| p_AD_Org_ID ||') group by w.m_warehouse_id, p.m_product_id)';
  
  -- Création D'index
  EXECUTE IMMEDIATE 'create index Z_INV_VALO_DATE_idx on Z_INV_VALO_DATE (m_warehouse_id, m_product_id)';
  EXECUTE IMMEDIATE 'create index Z_INV_VALO_DATE_idx2 on Z_INV_VALO_DATE (AD_PInstance_ID)';
   --MAJ Table
    EXECUTE IMMEDIATE ' insert into Z_INV_VALO_DATE  
       select 
       max(w.name) as warehousename, max(p.value) as productvalue, max(p.name) as productname, p.m_product_id, w.m_warehouse_id, 0 as qty ,  '|| p_AD_Org_ID ||' as ad_org_id, max(p.m_product_category_id) as m_product_category_id,
0 as cost, 0 as qtyTrx,0 as M_PRICELIST_VERSION_ID,0 as PRICEPO,0 as PRICELIST,0 as PRICESTD,0 as PRICELIMIT,TO_DATE('''|| TO_CHAR(p_DateTo,'DD/MM/YYYY')||''',''DD/MM/YYYY'') as DateValue, '||p_Currency_ID||' AS C_CURRENCY_ID    
, 0 as COSTAMT, 0 as TOTALAMT,0 as QtyOnHand,'|| p_ADClient_ID||' AS AD_CLIENT_ID, TRUNC(SYSDATE) as Created,TRUNC(SYSDATE) as UPDATED, 100 as CREATEDBY, 100 as UPDATEDBY, ''Y'' as ISACTIVE,
'||PInstance_ID||' as AD_PInstance_ID,'||M_CostElement_ID||' as M_CostElement_ID ,max(ao.Name) as ORGNAME , '||p_PriceList_ID||' as M_PRICELIST_ID
       from m_transaction m 
       inner join m_locator l on l.m_locator_id = m.m_locator_id 
       inner join m_warehouse w on w.m_warehouse_id = l.m_warehouse_id
        inner join AD_org ao on ao.ad_org_id = w.ad_org_id
       inner join m_product p on p.m_product_id = m.m_product_id
       where p.ISSTOCKED = ''Y'' and  trunc(m.movementdate) <= TO_DATE('''|| TO_CHAR(p_DateTo,'DD/MM/YYYY')||''',''DD/MM/YYYY'') and (0 = '||p_AD_Org_ID||' OR l.AD_Org_ID = '|| p_AD_Org_ID ||')
       and not exists(select 1 from Z_INV_VALO_DATE t2 where t2.m_warehouse_id = l.m_warehouse_id and t2.m_product_id = m.m_product_id) and m.ad_client_id ='|| p_ADClient_ID||' 
       group by w.m_warehouse_id, p.m_product_id';
     
     EXECUTE IMMEDIATE ('update Z_INV_VALO_DATE t set qtytrx = NVL((
       select sum(m.movementqty) from m_transaction m inner join m_locator l on l.m_locator_id = m.m_locator_id  where m.m_product_id = t.m_product_id and l.m_warehouse_id = t.m_warehouse_id 
       and trunc(m.movementdate) > trunc(t.DateValue)
       ),0)');
      
      EXECUTE IMMEDIATE ('update Z_INV_VALO_DATE t set QtyOnHand =QTY');
      EXECUTE IMMEDIATE ('update Z_INV_VALO_DATE t set QTY =QTY - qtytrx');
      COMMIT;
      EXECUTE IMMEDIATE ('DELETE Z_INV_VALO_DATE WHERE qty=0 ');
      EXECUTE IMMEDIATE ('UPDATE Z_INV_VALO_DATE set M_PriceList_Version_ID = '||pp_PriceListVersion_ID||' where AD_PInstance_ID = '||PInstance_ID);
      EXECUTE IMMEDIATE ('UPDATE Z_INV_VALO_DATE set M_PriceList_ID = '||p_PriceList_ID||' where AD_PInstance_ID = '||PInstance_ID);
      COMMIT;
      --Calcule prix avec CostPrice
      IF M_CostElement_ID is not null and M_CostElement_ID <> 0 THEN
      EXECUTE IMMEDIATE ('update Z_INV_VALO_DATE t set cost = NVL((select currentcostprice from m_cost pp where pp.M_CostElement_ID =t.M_CostElement_ID and pp.m_product_id = t.m_product_id and pp.AD_Client_ID =t.AD_Client_ID ),0)');
      end IF ;
      
      --Calcule Prix avec Pricelist

      EXECUTE IMMEDIATE ('UPDATE Z_INV_VALO_DATE iv 
			SET PricePO = 
				(SELECT currencyConvert (po.PriceList,po.C_Currency_ID,iv.C_Currency_ID,iv.DateValue,null, po.AD_Client_ID,po.AD_Org_ID)
				 FROM M_Product_PO po WHERE po.M_Product_ID=iv.M_Product_ID
				 AND po.IsCurrentVendor=''Y'' AND RowNum=1), 
			PriceList = 
				(SELECT currencyConvert(pp.PriceList,pl.C_Currency_ID,iv.C_Currency_ID,iv.DateValue,null, pl.AD_Client_ID,pl.AD_Org_ID)
				 FROM M_PriceList pl, M_PriceList_Version plv, M_ProductPrice pp
				 WHERE pp.M_Product_ID=iv.M_Product_ID AND pp.M_PriceList_Version_ID=iv.M_PriceList_Version_ID
				 AND pp.M_PriceList_Version_ID=plv.M_PriceList_Version_ID
				 AND plv.M_PriceList_ID=pl.M_PriceList_ID), 
			PriceStd = 
				(SELECT currencyConvert(pp.PriceStd,pl.C_Currency_ID,iv.C_Currency_ID,iv.DateValue,null, pl.AD_Client_ID,pl.AD_Org_ID)
				 FROM M_PriceList pl, M_PriceList_Version plv, M_ProductPrice pp
				 WHERE pp.M_Product_ID=iv.M_Product_ID AND pp.M_PriceList_Version_ID=iv.M_PriceList_Version_ID
				 AND pp.M_PriceList_Version_ID=plv.M_PriceList_Version_ID
				 AND plv.M_PriceList_ID=pl.M_PriceList_ID), 
			PriceLimit = 
				(SELECT currencyConvert(pp.PriceLimit,pl.C_Currency_ID,iv.C_Currency_ID,iv.DateValue,null, pl.AD_Client_ID,pl.AD_Org_ID)
				 FROM M_PriceList pl, M_PriceList_Version plv, M_ProductPrice pp
				 WHERE pp.M_Product_ID=iv.M_Product_ID AND pp.M_PriceList_Version_ID=iv.M_PriceList_Version_ID
				 AND pp.M_PriceList_Version_ID=plv.M_PriceList_Version_ID
				 AND plv.M_PriceList_ID=pl.M_PriceList_ID) where iv.M_PriceList_Version_ID is not null and iv.M_PriceList_Version_ID <> 0');
      
       EXECUTE IMMEDIATE ('UPDATE Z_INV_VALO_DATE set COSTAMT = COST * Qty, TOTALAMT = PriceStd * Qty');
      
      COMMIT;
      
      Select Count(*) into v_MbIn from Z_INV_VALO_DATE where AD_PInstance_ID = PInstance_ID;
      
      EXECUTE IMMEDIATE ('UPDATE AD_PInstance set Result = 1, ErrorMsg = '''||v_MbIn||''' where AD_PInstance_ID = '||PInstance_ID);
      
   END CreateInvValoDate;
   
   
 -- delete from ZT_PRINTARCO where AD_SESSION_ID = 13528170;