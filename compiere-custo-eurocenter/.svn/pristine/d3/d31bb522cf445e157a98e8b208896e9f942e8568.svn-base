ALTER TABLE C_BPartner ADD IsFrancoQty CHAR(1) DEFAULT 'N' CHECK (IsFrancoQty IN ('Y','N'));
UPDATE C_BPartner set IsFrancoQty = 'N';
ALTER TABLE C_BPartner ADD FrancoAmtQty NUMBER DEFAULT 0;
CREATE TABLE T_POInFranco (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, AD_OrgTrx_ID NUMBER(10), C_BPartner_ID NUMBER(10), C_Order_ID NUMBER(10), Created DATE DEFAULT SYSDATE NOT NULL, CreatedBy NUMBER(10) DEFAULT 0 NOT NULL, FrancoAmtQty NUMBER, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsFrancoQty CHAR(1) DEFAULT 'N' CHECK (IsFrancoQty IN ('Y','N')), QtyEntered NUMBER, TotalLines NUMBER, Updated DATE DEFAULT SYSDATE NOT NULL, UpdatedBy NUMBER(10) DEFAULT 0 NOT NULL);
CREATE OR REPLACE FORCE VIEW "RV_REQUISITION" ("AD_CLIENT_ID","AD_ORG_ID","CREATED","CREATEDBY","UPDATED","UPDATEDBY","DOCUMENTNO","DESCRIPTION","DATEDOC","M_PRODUCT_ID","ARTVALUE","ARTNAME","GAMME","MARQVALUE","MARQNAME","QTY","CLIENTVALUE","CLIENTNAME","FOURVALUE","FOURNAME","ACHVALUE","ACHNAME")
as
select 
r.ad_client_id, r.ad_org_id, r.created, r.createdby,  r.updated, r.updatedby, 
r.documentno, 
r.description, r.datedoc,
rl.m_product_id, p.value as art , p.name as artname, gam.value as gamme, marq.value as marqvalue, marq.name as marqname, 
rl.qty, 
cl.value as clientvalue , cl.name as clientname,
four.value as fourvalue, four.name as fourname,
bpu.value as achvalue, bpu.name as achname
from m_requisition r
inner join m_requisitionline rl on rl.m_requisition_id = r.m_requisition_id
left outer join c_order ov on ov.documentno = r.description
left outer join c_bpartner cl on cl.c_bpartner_id = ov.c_bpartner_id
inner join m_product p on p.m_product_id = rl.m_product_id
left outer join z_gamme gam on gam.z_gamme_id = p.z_gamme_id 
left outer join y_marque marq on marq.y_marque_id = p.y_marque_id
left outer join m_product_po po on po.m_product_id = rl.m_product_id and po.iscurrentvendor = 'Y'
left outer join c_bpartner four on four.c_bpartner_id = po.c_bpartner_id
left outer join ad_user u on u.ad_user_id = r.ad_user_id
left outer join c_bpartner bpu on bpu.c_bpartner_id = u.c_bpartner_id
where rl.c_orderline_id is null
and   r.docstatus <> 'DR';
create or replace force view "RV_POPRODUCT" 
("AD_CLIENT_ID","AD_ORG_ID","CREATED","CREATEDBY","UPDATED","DOCUMENTNO","C_BPARTNER_ID","M_PRODUCT_ID","QTYORDERED","MOVEMENTQTY","MOVEMENTDATE","DA")
AS
select l.ad_client_id, l.ad_org_id, l.created, l.createdby, l.updated,
o.documentno, o.c_bpartner_id,l.m_product_id, l.qtyordered, iol.movementqty, io.movementdate,r.documentno as da
from c_orderline l
inner join c_order o on o.c_order_id = l.c_order_id
inner join m_inoutline iol on iol.c_orderline_id = l.c_orderline_id 
inner join m_inout io on io.m_inout_id = iol.m_inout_id
left outer join m_requisitionline rl on rl.c_orderline_id = l.c_orderline_id
left outer join m_requisition r on r.m_requisition_id = rl.m_requisition_id
where o.issotrx = 'N';
ALTER TABLE M_Locator ADD Z_MagLoc CHAR(50);