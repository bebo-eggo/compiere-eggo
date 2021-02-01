create or replace FUNCTION GETMAXDATEPERIODE
(
p_C_Period_ID		IN	NUMBER
)
RETURN DATE
AS
v_Date			DATE ;
BEGIN

 SELECT MAX(pr.STARTDATE)
 INTO	v_Date
 FROM C_Period pr 
 WHERE pr.C_Year_ID = (SELECT prd.C_Year_ID FROM C_Period prd  WHERE prd.C_Period_ID= p_C_Period_ID) AND pr.IsActive='Y';
 
 RETURN v_Date;
 
 END GETMAXDATEPERIODE;
/

create or replace FUNCTION GETMINDATEPERIODE
(
p_C_Period_ID		IN	NUMBER
)
RETURN DATE
AS
v_Date			DATE ;
BEGIN

 SELECT MIN(pr.STARTDATE)
 INTO	v_Date
 FROM C_Period pr 
 WHERE pr.C_Year_ID = (SELECT prd.C_Year_ID FROM C_Period prd  WHERE prd.C_Period_ID= p_C_Period_ID) AND pr.IsActive='Y';
 
 RETURN v_Date;
 
 END GETMINDATEPERIODE;
/

create or replace FUNCTION GET_MONTANT_BLG_LF
(
	p_TypeCol      IN VARCHAR2,
  p_AccountType  IN VARCHAR2,
  p_Type         IN VARCHAR2,
  p_StarBal      IN NUMBER,
  p_Amount       IN NUMBER
)
RETURN NUMBER
AS
  p_AmtDr    NUMBER;
  p_AmtCr     NUMBER;
BEGIN


      IF (p_TypeCol ='SD') THEN
      
        IF( p_Type = 'DR') THEN
           IF((p_StarBal > 0) OR ((p_StarBal=0) AND (p_AccountType = 'A' OR p_AccountType = 'E'))) THEN
              RETURN p_StarBal;
           ELSE
              RETURN 0;
           END IF;
        ELSE
           IF((p_StarBal < 0) OR ((p_StarBal=0) AND (p_AccountType = 'R' OR p_AccountType = 'L'))) THEN
              RETURN - p_StarBal;
           ELSE
              RETURN 0;
           END IF;
        END IF;
      
      END IF;
      
      
      IF (p_TypeCol ='SF') THEN
      
        IF( p_Type = 'DR') THEN
           IF(((p_StarBal + p_Amount)  > 0) OR (((p_StarBal + p_Amount)=0) AND (p_AccountType = 'A' OR p_AccountType = 'E'))) THEN
              RETURN p_StarBal + p_Amount;
           ELSE
              RETURN 0;
           END IF;
        ELSE
           IF(((p_StarBal + p_Amount) < 0) OR (((p_StarBal + p_Amount)=0) AND (p_AccountType = 'R' OR p_AccountType = 'L'))) THEN
              RETURN  0 - p_StarBal - p_Amount ;
           ELSE
              RETURN 0;
           END IF;
        END IF;
      
      END IF;
      
EXCEPTION WHEN OTHERS THEN
 RETURN 0;

END GET_MONTANT_BLG_LF;
/

create or replace FUNCTION GET_MONTANT_DEBIT_CREDIT
(
	p_IsSOTrx  IN VARCHAR2,
  p_DocType  IN VARCHAR2,
  p_Type     IN VARCHAR2,
  p_DocAmt   IN NUMBER,
  p_PayAmt   IN NUMBER
)
RETURN NUMBER
AS
  p_AmtDr    NUMBER;
  p_AmtCr     NUMBER;
BEGIN


       IF (p_IsSOTrx ='Y') THEN
            IF (p_DocType ='I') THEN
                IF (p_DocAmt > 0) THEN
                    p_AmtDr := p_DocAmt;
                    p_AmtCr := 0;
                ELSE 
                    p_AmtDr := 0;
                    p_AmtCr := - p_DocAmt;
                
                END IF;
            ELSE
                IF (p_PayAmt > 0) THEN
                    p_AmtDr := 0;
                    p_AmtCr := p_PayAmt;
                ELSE 
                    p_AmtDr := - p_PayAmt;
                    p_AmtCr := 0;
                
                END IF; 
            END IF;
        ELSE
            IF (p_DocType ='I') THEN
                IF (p_DocAmt > 0) THEN
                    p_AmtDr := 0;
                    p_AmtCr := p_DocAmt;
                ELSE 
                    p_AmtDr := - p_DocAmt;
                    p_AmtCr := 0;
                
                END IF;
            ELSE
                IF (p_PayAmt > 0) THEN
                    p_AmtDr := p_PayAmt;
                    p_AmtCr := 0;
                ELSE 
                    p_AmtDr := 0;
                    p_AmtCr := - p_PayAmt;
                
                END IF; 
            END IF;
        END IF;
  
       IF(p_Type ='DR') THEN
            RETURN  p_AmtDr;
        END IF;
        
        IF(p_Type ='CR') THEN
            RETURN  p_AmtCr;
        END IF;
        
       IF(p_Type ='TT') THEN
           IF(p_AmtDr <> 0) THEN
             RETURN  p_AmtDr;
           ELSE
             RETURN - p_AmtCr;
           END IF;
        END IF;

EXCEPTION WHEN OTHERS THEN
 RETURN 0;

END GET_MONTANT_DEBIT_CREDIT;
/

create or replace FUNCTION ISVALIDEAFFECTATION 
(
   p_TableName      IN VARCHAR2,
   p_AffectationID  IN NUMBER,
   p_ID             IN NUMBER
)
 	RETURN VARCHAR2
AS
v_Count   NUMBER := 0 ;

CURSOR CUR_PAYEMENT IS
SELECT PAY.DocumentNo,PAY.C_Payment_ID
FROM C_AllocationLine LOL
INNER JOIN C_Invoice INV ON (INV.C_Invoice_ID = LOL.C_Invoice_ID)
INNER JOIN C_Payment PAY ON (PAY.C_Payment_ID = LOL.C_Payment_ID)
WHERE LOL.C_Invoice_ID = p_ID
ORDER BY PAY.DocumentNo;

CURSOR CUR_AFFECTATION IS        
SELECT HDR.DocumentNo,HDR.C_AllocationHdr_ID
FROM C_AllocationLine LOL
INNER JOIN C_Payment PAY ON (PAY.C_Payment_ID = LOL.C_Payment_ID)
INNER JOIN C_AllocationHdr HDR  ON (HDR.C_AllocationHdr_ID = LOL.C_AllocationHdr_ID)
WHERE LOL.C_Payment_ID = p_ID
ORDER BY HDR.DocumentNo;

BEGIN

IF (p_TableName= 'C_Invoice') THEN
		FOR Payment IN CUR_PAYEMENT LOOP
      v_Count := v_Count +1;
      IF(Payment.C_Payment_ID = p_AffectationID) THEN
         IF(v_Count > 1 ) THEN
            RETURN 'Y';
         ELSE
            RETURN 'N';
         END IF;
      END IF;
		END LOOP;
    RETURN 'N';
END IF;

IF (p_TableName= 'C_Payment') THEN
	  FOR Affectation IN CUR_AFFECTATION LOOP
      v_Count := v_Count +1;
      IF(Affectation.C_AllocationHdr_ID = p_AffectationID) THEN
         IF(v_Count > 1 ) THEN
            RETURN 'Y';
         ELSE
            RETURN 'N';
         END IF;
      END IF;
		END LOOP;
    RETURN 'N';
END IF;

EXCEPTION WHEN OTHERS THEN
 RETURN 'N';
 
END ISVALIDEAFFECTATION;
/

create or replace FUNCTION Z_ACCOUNT_starting_BALANCE_CR
(
	p_AD_Client_ID IN NUMBER,
	p_AD_Org_ID IN NUMBER,
	p_c_acctschema_id IN NUMBER,
	p_account_id IN NUMBER,
	p_dateacct IN date,
  p_IncludeAnouveau IN VARCHAR2,
  p_IncludeAdjPeriod IN VARCHAR2
)
RETURN NUMBER
AS
  v_C_Period_ID   NUMBER ;
  v_StartDate     date   := NULL;
	v_BalanceAmt		NUMBER := 0;
BEGIN

SELECT P.C_Period_ID, TRUNC(P.StartDate)
INTO v_C_Period_ID,v_StartDate
FROM C_Year Y
INNER JOIN C_Period P ON(p.C_Year_ID = Y.C_Year_ID)
WHERE P.PeriodType = 'A' AND TRUNC(P.StartDate)= TRUNC(P.EndDate) AND TRUNC(P.StartDate) = TRUNC(GETMINDATEPERIODE(P.C_Period_ID)) AND p.IsActive='Y'
AND Y.FiscalYear =  TO_CHAR(EXTRACT(YEAR FROM p_dateacct));

IF (v_C_Period_ID IS NOT NULL) THEN

    IF((TRUNC(v_StartDate)= TRUNC(p_dateacct)) AND (p_IncludeAnouveau = 'Y') ) THEN

      SELECT SUM(FB.AmtAcctCr)
      INTO v_BalanceAmt
      FROM Fact_Acct_Balance FB
      WHERE FB.AD_Client_ID = p_ad_client_id
      AND (FB.AD_Org_ID = p_ad_org_id or p_ad_org_id = 0)
      AND FB.C_AcctSchema_ID = p_c_acctschema_id
      AND FB.Account_ID = p_account_id
      AND FB.PostingType = 'A'
      AND trunc(FB.dateacct) = trunc(v_StartDate) AND FB.C_Period_ID = v_C_Period_ID;

      RETURN COALESCE(v_BalanceAmt,0);

   END IF;
 END IF;


   RETURN COALESCE(v_BalanceAmt,0);



END Z_ACCOUNT_starting_BALANCE_CR;
/

create or replace FUNCTION Z_ACCOUNT_starting_BALANCE_DR
(
	p_AD_Client_ID IN NUMBER,
	p_AD_Org_ID IN NUMBER,
	p_c_acctschema_id IN NUMBER,
	p_account_id IN NUMBER,
	p_dateacct IN date,
  p_IncludeAnouveau IN VARCHAR2,
  p_IncludeAdjPeriod IN VARCHAR2
)
RETURN NUMBER
AS
  v_C_Period_ID   NUMBER ;
  v_StartDate     date   := NULL;
	v_BalanceAmt		NUMBER := 0;
BEGIN

SELECT P.C_Period_ID, TRUNC(P.StartDate)
INTO v_C_Period_ID,v_StartDate
FROM C_Year Y
INNER JOIN C_Period P ON(p.C_Year_ID = Y.C_Year_ID)
WHERE P.PeriodType = 'A' AND TRUNC(P.StartDate)= TRUNC(P.EndDate) AND TRUNC(P.StartDate) = TRUNC(GETMINDATEPERIODE(P.C_Period_ID)) AND p.IsActive='Y'
AND Y.FiscalYear =  TO_CHAR(EXTRACT(YEAR FROM p_dateacct));

IF (v_C_Period_ID IS NOT NULL) THEN

    IF((TRUNC(v_StartDate)= TRUNC(p_dateacct)) AND (p_IncludeAnouveau = 'Y') ) THEN

      SELECT SUM(FB.AmtAcctDr)
      INTO v_BalanceAmt
      FROM Fact_Acct_Balance FB
      WHERE FB.AD_Client_ID = p_ad_client_id
      AND (FB.AD_Org_ID = p_ad_org_id or p_ad_org_id = 0)
      AND FB.C_AcctSchema_ID = p_c_acctschema_id
      AND FB.Account_ID = p_account_id
      AND FB.PostingType = 'A'
      AND trunc(FB.dateacct) = trunc(v_StartDate) AND FB.C_Period_ID = v_C_Period_ID;

      RETURN COALESCE(v_BalanceAmt,0);
   end if;
 END IF;



   RETURN COALESCE(v_BalanceAmt,0);



END Z_ACCOUNT_starting_BALANCE_DR;
/

create or replace FUNCTION Y_Id_Cpt_To_Val_Name
 ( p_Cpt_ID			IN	NUMBER )
 RETURN VARCHAR2 AS
 r_Value			VARCHAR2(256);
 BEGIN
 SELECT value || '-' || name INTO r_Value
 FROM C_ELEMENTVALUE
 WHERE C_ELEMENTVALUE_ID = p_Cpt_ID;
 RETURN r_Value;
 END Y_Id_Cpt_To_Val_Name;
 /

 CREATE OR REPLACE
  FUNCTION ZInvoicePaymentTermDueDays(
      Invoice_ID     IN NUMBER,
      PaymentTerm_ID IN NUMBER,
      DocDate        IN DATE,
      DueDate        IN DATE,
      PayDate        IN DATE )
    RETURN NUMBER
    /**************************************
    *           REDMINE #38746            *
    ***************************************/
  AS
    Days                NUMBER := 0;
    Payschedules        NUMBER := 0;
    InvoicePaySchedules NUMBER := 0;
  BEGIN
    SELECT COUNT(*)
    INTO Payschedules
    FROM C_Payschedule
    WHERE C_Paymentterm_Id = Paymentterm_Id
    AND Isactive           ='Y'
    AND Isvalid            ='Y';
    SELECT COUNT(*)
    INTO InvoicePaySchedules
    FROM C_InvoicePaySchedule
    WHERE C_Invoice_Id       = Invoice_Id
    AND Isactive             ='Y'
    AND Isvalid              ='Y';
    IF(Payschedules          >0) THEN
      Days                  := Paymenttermduedays(Paymentterm_Id,Duedate,Paydate);
    Elsif(Invoicepayschedules>0) THEN
      Days                  := daysBetween(Paydate ,Duedate);
    ELSE
      Days := Paymenttermduedays(Paymentterm_Id,Docdate,Paydate);
    END IF;
    RETURN Days;
  END ZInvoicePaymentTermDueDays;
  /
