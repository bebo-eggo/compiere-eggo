connect &1/&2@&3
-----------------------------------------------------------------------------------
--  Creation de la fonction qui attribue les numéros d'ID (base sur Z_PosSequence
-----------------------------------------------------------------------------------
create or replace
FUNCTION	"AD_SEQUENCE_NEXTNO" 
(
	TableName IN VARCHAR2
)
RETURN NUMBER
AS
	NextNo						  NUMBER;
BEGIN

	SELECT CurrentNext
	  INTO NextNo
	  FROM Z_PosSequence
	 WHERE Name = TableName
	   AND IsActive = 'Y'
	   AND IsTableID = 'Y'
	   AND IsAutoSequence = 'Y'
	   FOR UPDATE OF CurrentNext;

	UPDATE Z_PosSequence
	   SET CurrentNext = CurrentNext + IncrementNo
	 WHERE Name = TableName;

	RETURN NextNo;

EXCEPTION
	WHEN NO_DATA_FOUND THEN
		RAISE_APPLICATION_ERROR (-20100, 'Table Sequence not found');

END AD_Sequence_NextNo;
/
---------------------------------------------------------------------------------------------------------
--  On désactive toutes les contraintes de la base magasin (besoin pour les deletes de la synchro DOWN)
---------------------------------------------------------------------------------------------------------
begin
for i in (select constraint_name, table_name from user_constraints) LOOP
execute immediate 'alter table '||i.table_name||' DISABLE constraint '||i.constraint_name||' cascade';
end loop;
end;
/

---------------------------------------------------------------------------------------------------------
--  Ajout d'index sur le champ UPDATED de la base magasin (besoin la synchro DOWN)
---------------------------------------------------------------------------------------------------------
CREATE INDEX IDX_UPDT_C_Country_Trl ON C_Country_Trl (updated) ;
CREATE INDEX IDX_UPDT_AD_Message ON AD_Message (updated) ;
CREATE INDEX IDX_UPDT_AD_Client ON AD_Client (updated) ;
CREATE INDEX IDX_UPDT_M_RelatedProduct ON M_RelatedProduct (updated) ;
CREATE INDEX IDX_UPDT_M_AttributeUse ON M_AttributeUse (updated) ;
CREATE INDEX IDX_UPDT_AD_Reference ON AD_Reference (updated) ;
CREATE INDEX IDX_UPDT_AD_Ref_List ON AD_Ref_List (updated) ;
CREATE INDEX IDX_UPDT_C_BP_Group ON C_BP_Group (updated) ;
CREATE INDEX IDX_UPDT_C_BankAccountDoc ON C_BankAccountDoc (updated) ;
CREATE INDEX IDX_UPDT_AD_User ON AD_User (updated) ;
CREATE INDEX IDX_UPDT_AD_Sequence ON AD_Sequence (updated) ;
CREATE INDEX IDX_UPDT_AD_Message_Trl ON AD_Message_Trl (updated) ;
CREATE INDEX IDX_UPDT_C_BPartner_Location ON C_BPartner_Location (updated) ;
CREATE INDEX IDX_UPDT_M_PriceList_Version ON M_PriceList_Version (updated) ;
CREATE INDEX IDX_UPDT_C_Bank ON C_Bank (updated) ;
CREATE INDEX IDX_UPDT_C_BankAccount ON C_BankAccount (updated) ;
CREATE INDEX IDX_UPDT_M_AttributeSI ON M_AttributeSetInstance (updated) ;
CREATE INDEX IDX_UPDT_M_BOMProduct ON M_BOMProduct (updated) ;
CREATE INDEX IDX_UPDT_C_BPartner ON C_BPartner (updated) ;
CREATE INDEX IDX_UPDT_M_Product ON M_Product (updated) ;
CREATE INDEX IDX_UPDT_C_Cash ON C_Cash (updated) ;
CREATE INDEX IDX_UPDT_M_PriceList ON M_PriceList (updated) ;
CREATE INDEX IDX_UPDT_C_Greeting ON C_Greeting (updated) ;
CREATE INDEX IDX_UPDT_M_BOM ON M_BOM (updated) ;
CREATE INDEX IDX_UPDT_R_MailText ON R_MailText (updated) ;
CREATE INDEX IDX_UPDT_M_Cost ON M_Cost (updated) ;
CREATE INDEX IDX_UPDT_AD_Ref_List_Trl ON AD_Ref_List_Trl (updated) ;
CREATE INDEX IDX_UPDT_C_Currency ON C_Currency (updated) ;
CREATE INDEX IDX_UPDT_AD_Org ON AD_Org (updated) ;
CREATE INDEX IDX_UPDT_C_Location ON C_Location (updated) ;
CREATE INDEX IDX_UPDT_C_City ON C_City (updated) ;
CREATE INDEX IDX_UPDT_M_Locator ON M_Locator (updated) ;
CREATE INDEX IDX_UPDT_M_Product_Category ON M_Product_Category (updated) ;
CREATE INDEX IDX_UPDT_M_Product_PO ON M_Product_PO (updated) ;
CREATE INDEX IDX_UPDT_M_Substitute ON M_Substitute (updated) ;
CREATE INDEX IDX_UPDT_C_DocType ON C_DocType (updated) ;
CREATE INDEX IDX_UPDT_AD_ClientInfo ON AD_ClientInfo (updated) ;
CREATE INDEX IDX_UPDT_AD_OrgInfo ON AD_OrgInfo (updated) ;
CREATE INDEX IDX_UPDT_M_ProductPrice ON M_ProductPrice (updated) ;
CREATE INDEX IDX_UPDT_M_AttributeValue ON M_AttributeValue (updated) ;
CREATE INDEX IDX_UPDT_M_AttributeSet ON M_AttributeSet (updated) ;
CREATE INDEX IDX_UPDT_M_AttributeInstance ON M_AttributeInstance (updated) ;
CREATE INDEX IDX_UPDT_C_Tax ON C_Tax (updated) ;
CREATE INDEX IDX_UPDT_M_StorageDetail ON M_StorageDetail (updated) ;
CREATE INDEX IDX_UPDT_Y_Marque ON Y_Marque (updated) ;
CREATE INDEX IDX_UPDT_M_Attribute ON M_Attribute (updated) ;
CREATE INDEX IDX_UPDT_C_Country ON C_Country (updated) ;
CREATE INDEX IDX_UPDT_ZSubPaymentRule ON ZSubPaymentRule (updated) ;
CREATE INDEX IDX_UPDT_Z_Taxdoctype ON Z_Taxdoctype (updated) ;
CREATE INDEX IDX_UPDT_Z_PosPaymentRule ON Z_PosPaymentRule (updated) ;
CREATE INDEX IDX_UPDT_Z_PosWfAction ON Z_PosWfAction (updated) ;
CREATE INDEX IDX_UPDT_Z_S_Famille ON Z_S_Famille (updated) ;
CREATE INDEX IDX_UPDT_Z_S_S_Famille ON Z_S_S_Famille (updated) ;
CREATE INDEX IDX_UPDT_Z_S_S_S_Famille ON Z_S_S_S_Famille (updated) ;
CREATE INDEX IDX_UPDT_Z_ProductTax ON Z_ProductTax (updated) ;
CREATE INDEX IDX_UPDT_Z_SavStatus ON Z_SavStatus (updated) ;
/

---------------------------------------------------------------------------------------------------------
--  Création des autres fcts
---------------------------------------------------------------------------------------------------------
--------------------------------------------------------
--  DDL for Function BKACCTONDOCUMENT
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "BKACCTONDOCUMENT" (	p_AD_Client_ID IN NUMBER)

RETURN VARCHAR2
AS
v_list VARCHAR2(250);
CURSOR	Cur_bank	IS
select (bk.name || ' : ' || bka.accountno || ' (' || trim(bka.bban || ' ' || iban) || ') ') as description  from c_bank bk inner join c_bankaccount bka on bka.c_bank_id = bk.c_bank_id where bka.z_isdocumentvisible = 'Y'
 and bk.ad_client_id = p_AD_Client_ID;

BEGIN
    v_list := '';
    FOR a IN Cur_bank LOOP
		v_list := v_list || a.description;
    END LOOP;

    return trim(v_list);

END BkAcctOnDocument;

/
--------------------------------------------------------
--  DDL for Function GETAVAILABLEQTY
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "GETAVAILABLEQTY" (
      CLIENT_ID in number,
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
  
  select nvl(sum(qty),0) INTO qtyOH from M_StorageDetail where ad_client_id=CLIENT_ID and ad_org_id=ORG_ID and m_product_id=PRODUCT_ID and m_attributesetinstance_id=0 AND qtytype='H';
  select nvl(sum(qty),0) INTO qtyR from M_StorageDetail where ad_client_id=CLIENT_ID and ad_org_id=ORG_ID and m_product_id=PRODUCT_ID and m_attributesetinstance_id=0 AND qtytype='R';
  select nvl(sum(qty),0) INTO qtyCOH from M_StorageDetail where ad_client_id=CLIENT_ID and ad_org_id=ORG_ID and m_product_id=PRODUCT_ID and m_attributesetinstance_id=0 and m_locator_id=CONSIGLOCATOR_ID and qtytype='H';
  select nvl(sum(Qty),0) INTO qtyOUT from Z_TransferedQty where ad_client_id=CLIENT_ID and ad_org_id=ORG_ID and m_product_id=PRODUCT_ID;  
  RETURN qtyOH - qtyR - qtyOUT - qtyCOH;
  EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RETURN 0;
  END getavailableqty;

/
--------------------------------------------------------
--  DDL for Function GETLASTPRICESTDPROUCT
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "GETLASTPRICESTDPROUCT" (
      P_Prouct_Id in NUMBER, ADCLIENT in number)
    RETURN NUMBER
  AS
    v_PriceStd               NUMBER;
    v_m_pricelist_Id         NUMBER;
    V_M_Pricelist_Version_Id NUMBER;
    P_Pricename              VARCHAR2(60);

  BEGIN
    if (ADCLIENT=1000000) then P_Pricename := 'VENTE EGGO'; end if;
    if (ADCLIENT=1000022) then P_Pricename := 'VENTE EC'; end if;
    SELECT M_Pricelist_ID
    INTO V_M_Pricelist_Id
    FROM M_Pricelist
    WHERE Name=P_Pricename;
    SELECT getPriceListLastVersionPrice(V_M_Pricelist_Id,P_Prouct_Id, trunc(sysdate))
    INTO V_M_Pricelist_Version_Id
    FROM Dual;
    SELECT PriceStd
    INTO v_PriceStd
    FROM M_Productprice
    WHERE M_Pricelist_Version_Id=V_M_Pricelist_Version_Id
    AND M_Product_Id            =P_Prouct_Id;
    RETURN v_PriceStd;
  EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RETURN NULL;
  END GetlastPriceStdprouct;

/
--------------------------------------------------------
--  DDL for Function GETLASTPROMOPRICE
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "GETLASTPROMOPRICE" (MPriceList in number,MPRODUCTID in number, p_date1 in DATE,isFolder in CHAR)
RETURN number
AS
IDx number;
v_PriceStd number;
begin
select x INTO IDx from (
SELECT max(M_Pricelist_Version_ID) as x  
FROM M_Pricelist_Version WHERE IsActive='Y' and is_zfolder =isFolder and trunc(Validfrom) <=trunc(p_date1) and (trunc(ValidTo)>=trunc(p_date1) OR trunc(ValidTo) is null)  and M_Pricelist_ID = MPriceList 
and exists (Select M_Product_ID from M_ProductPrice where M_ProductPrice.M_Pricelist_Version_ID=M_PRICELIST_VERSION.M_PRICELIST_VERSION_ID 
and M_PRODUCTPRICE.M_PRODUCT_ID=MPRODUCTID and M_PRODUCTPRICE.IsActive='Y') order by Validfrom desc) where rownum=1;
SELECT PriceStd
    INTO v_PriceStd
    FROM M_Productprice
    WHERE M_Pricelist_Version_Id=IDx
    AND M_Product_Id            =MPRODUCTID;
RETURN v_PriceStd;
END;

/
--------------------------------------------------------
--  DDL for Function GETNEXTPROMODATE
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "GETNEXTPROMODATE" (MPriceList in number,MPRODUCTID in number, p_date1 in DATE,isFolder in CHAR)
RETURN VARCHAR2
AS
IDx VARCHAR2(38);
v_PriceStd number;
begin
select x INTO IDx from (
SELECT 'Promo du '||TO_CHAR(M_Pricelist_Version.VALIDFROM,'DD/MM/YYYY')||' - au '||TO_CHAR(M_Pricelist_Version.VALIDTO,'DD/MM/YYYY')||' : '  as x  
FROM M_Pricelist_Version WHERE IsActive='Y' and is_zfolder =isFolder and trunc(Validfrom) >trunc(p_date1) and M_Pricelist_ID = MPriceList 
and exists (Select M_Product_ID from M_ProductPrice where M_ProductPrice.M_Pricelist_Version_ID=M_PRICELIST_VERSION.M_PRICELIST_VERSION_ID 
and M_PRODUCTPRICE.M_PRODUCT_ID=MPRODUCTID and M_PRODUCTPRICE.IsActive='Y') order by Validfrom desc) where rownum=1;
RETURN IDx;
END;

/
--------------------------------------------------------
--  DDL for Function GETNEXTPROMOPRICE
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "GETNEXTPROMOPRICE" (MPriceList in number,MPRODUCTID in number, p_date1 in DATE,isFolder in CHAR)
RETURN number
AS
IDx number;
v_PriceStd number;
begin
select x INTO IDx from (
SELECT max(M_Pricelist_Version_ID) as x  
FROM M_Pricelist_Version WHERE IsActive='Y' and is_zfolder =isFolder and trunc(Validfrom) >trunc(p_date1) and M_Pricelist_ID = MPriceList 
and exists (Select M_Product_ID from M_ProductPrice where M_ProductPrice.M_Pricelist_Version_ID=M_PRICELIST_VERSION.M_PRICELIST_VERSION_ID 
and M_PRODUCTPRICE.M_PRODUCT_ID=MPRODUCTID and M_PRODUCTPRICE.IsActive='Y') order by Validfrom desc) where rownum=1;
SELECT PriceStd
    INTO v_PriceStd
    FROM M_Productprice
    WHERE M_Pricelist_Version_Id=IDx
    AND M_Product_Id            =MPRODUCTID;
RETURN v_PriceStd;
END;

/
--------------------------------------------------------
--  DDL for Function GETPLISTLASTVERSIONPRICELIST
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "GETPLISTLASTVERSIONPRICELIST" (
      MPriceList IN NUMBER,
      MPRODUCTID IN NUMBER,
      p_date1    IN DATE)
    RETURN NUMBER
  AS
    v_PriceStd               NUMBER;
    V_M_Pricelist_Version_Id NUMBER;
  BEGIN
    SELECT x
    INTO V_M_Pricelist_Version_Id
    FROM
      (SELECT MAX(M_Pricelist_Version_ID) AS x
      FROM M_Pricelist_Version
      WHERE IsActive        ='Y'
      AND TRUNC(Validfrom) <=TRUNC(p_date1)
      AND M_Pricelist_ID    = MPriceList
      AND EXISTS
        (SELECT M_Product_ID
        FROM M_ProductPrice
        WHERE M_ProductPrice.M_Pricelist_Version_ID=M_PRICELIST_VERSION.M_PRICELIST_VERSION_ID
        AND M_PRODUCTPRICE.M_PRODUCT_ID            =MPRODUCTID
        AND M_PRODUCTPRICE.IsActive                ='Y'
        )
      ORDER BY Validfrom DESC
      )
    WHERE rownum=1;
    SELECT NVL(pricelist,0)
    INTO v_PriceStd
    FROM M_Productprice
    WHERE M_Pricelist_Version_Id=V_M_Pricelist_Version_Id
    AND M_Product_Id            =MPRODUCTID;
    RETURN v_PriceStd;
  END;

/
--------------------------------------------------------
--  DDL for Function GETPRICELISTLASTVERSIONPRICE
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "GETPRICELISTLASTVERSIONPRICE" (MPriceList in number,MPRODUCTID in number, p_date1 in DATE)
RETURN number
AS
IDx number;
begin
select x INTO IDx from (
SELECT max(M_Pricelist_Version_ID) as x
FROM M_Pricelist_Version WHERE IsActive='Y' and trunc(Validfrom) <=trunc(p_date1) and M_Pricelist_ID = MPriceList
and exists (Select M_Product_ID from M_ProductPrice where M_ProductPrice.M_Pricelist_Version_ID=M_PRICELIST_VERSION.M_PRICELIST_VERSION_ID and M_PRODUCTPRICE.M_PRODUCT_ID=MPRODUCTID and M_PRODUCTPRICE.IsActive='Y') order by Validfrom desc) where rownum=1;

RETURN IDx;

END;

/
--------------------------------------------------------
--  DDL for Function GETPRODUCTTAX
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "GETPRODUCTTAX" 
(
  Product_ID  IN NUMBER,
  AD_CLIENT       IN NUMBER
)
RETURN NUMBER AS
        PRODUCTTAX    NUMBER := 0;
        begin
Select 0 into PRODUCTTAX from DUAL;
return PRODUCTTAX;
   EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RETURN 0;
END getProductTax;

/

exit