CREATE OR REPLACE FORCE VIEW "ZRV_PRODUCTPRICESYSDATE" ("AD_CLIENT_ID", "M_PRICELIST_ID", "M_PRICELIST_VERSION_ID", "M_PRODUCT_ID", "VALIDFROM", "VALIDTO", "PRICESTD", "PRICELISTNAME", "VERSIONNAME", "AD_ORG_ID", "ISACTIVE", "IS_ZFOLDER") AS 
select mpp2.AD_CLIENT_ID,mp2.M_PRICELIST_ID, mpv2.M_PRICELIST_VERSION_ID,mpp2.M_PRODUCT_ID, mpv2.ValidFrom, mpv2.VALIDTO ,mpp2.PRICESTD, mp2.Name as PRICELISTNAME,mpv2.name as VERSIONNAME, x.AD_ORg_ID, 'Y' as ISACTIVE,x.IS_ZFOLDER   from M_PRODUCTPRICE mpp2
inner join M_Pricelist_Version mpv2 on mpv2.M_PRICELIST_VERSION_ID = mpp2.M_PRICELIST_VERSION_ID
inner join M_PRICELIST mp2 on mp2.M_PRICELIST_ID = mpv2.M_PRICELIST_ID
inner join 
(select t.M_Product_ID, t.M_PRICELIST_ID,t.AD_ORg_ID, max(M_PRICELIST_VERSION_ID)as M_PRICELIST_VERSION_ID, t.IS_ZFOLDER  from (
Select mpp.M_Product_ID as M_Product_ID, mp.M_PRICELIST_ID as M_PRICELIST_ID, (mpv.M_PRICELIST_VERSION_ID) as M_PRICELIST_VERSION_ID, mpp.AD_ORg_ID, mpv.IS_ZFOLDER from M_ProductPrice mpp
inner join M_Pricelist_Version mpv on mpv.M_PRICELIST_VERSION_ID = mpp.M_PRICELIST_VERSION_ID
inner join M_PRICELIST mp on mp.M_PRICELIST_ID = mpv.M_PRICELIST_ID
where mpp.isactive='Y' AND mpv.isactive='Y'  
--and mpp.M_PRODUCT_ID = 1102241
AND (trunc(mpv.validto) >= trunc(SYSDATE) OR mpv.validto is null) AND trunc(mpv.validfrom) <= trunc(SYSDATE ) 
ORDER BY mpv.is_zfolder desc,mpv.validfrom DESC)t
group by t.M_Product_ID, t.M_PRICELIST_ID, t.AD_ORg_ID,t.IS_ZFOLDER )x
on x.M_Product_ID = mpp2.M_Product_ID and mpp2.M_PRICELIST_VERSION_ID = x.M_PRICELIST_VERSION_ID;

CREATE OR REPLACE FORCE VIEW "ZRV_PRODUCTPRICECHANGE" ("AD_CLIENT_ID", "AD_ORG_ID", "VALUE", "UPDATED") AS 
Select mpp.AD_Client_ID, mpp.AD_Org_ID, mp.Value,TRUNC(mpp.UPDATED) as UPDATED  from M_PRODUCTPRICE mpp 
inner join  M_PRODUCT mp on mp.M_PRODUCT_ID = mpp.M_PRODUCT_ID
group by  mpp.AD_Client_ID, mpp.AD_Org_ID, mp.Value,TRUNC(mpp.UPDATED);

