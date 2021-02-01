create or replace FUNCTION            "YR_QTY_ASOFLOC"
(
    Product_ID      IN NUMBER,
    loc_ID           IN NUMBER,
    MvtDate         IN DATE,
    attributeSetInstance_ID IN NUMBER
)
RETURN NUMBER
/*
 *  Return quantity on hand for an Organization and a product
 */
AS

    QtyTrans                NUMBER := 0;
    QtyOnHand               NUMBER := 0;

    testID          NUMBER;
    myLoc_ID  NUMBER;
    myProduct_ID    NUMBER;

BEGIN
--  Check Parameters
    -- Check Organization exist
    myLoc_ID := loc_ID;
    IF (myLoc_ID IS NULL) THEN
         RETURN 0;
    ELSE
         SELECT count(*) INTO testID FROM M_LOCATOR WHERE M_LOCATOR_ID = myLoc_ID;
         IF (testID = 0) THEN
              RETURN 0;
         END IF;
    END IF;


    -- Check Product exist
    myProduct_ID := Product_ID;
    IF (myProduct_ID IS NULL) THEN
         RETURN 0;
    ELSE
         SELECT COUNT(*) INTO testID FROM M_PRODUCT WHERE M_Product_ID =
myProduct_ID;
         IF (testID = 0) THEN
              RETURN 0;
         END IF;
    END IF;

-- Get QTy On Hand
    SELECT NVL(SUM(Qty),0) INTO QtyOnHand FROM M_STORAGEDETAIL
    WHERE  M_Product_ID = Product_ID
      AND  M_Locator_ID = myLoc_ID
      AND M_ATTRIBUTESETINSTANCE_ID = attributeSetInstance_ID
    AND QTYTYPE = 'H';


-- Get Transactions
    SELECT NVL(SUM(MovementQty),0) INTO QtyTrans FROM M_TRANSACTION
    WHERE  M_Product_ID = Product_ID
      AND  M_Locator_ID = myLoc_ID
      AND M_ATTRIBUTESETINSTANCE_ID = attributeSetInstance_ID
      AND TRUNC(MovementDate) > TRUNC(MvtDate);
      RETURN (QtyOnHand - QtyTrans);

END Yr_Qty_AsofLoc;
/
