CREATE TABLE Z_BPartner_Replenish
  (
    AD_Client_ID  NUMBER(10) NOT NULL,
    AD_Org_ID     NUMBER(10) NOT NULL,
    C_BPartner_ID NUMBER(10) NOT NULL,
    Created DATE DEFAULT SYSDATE NOT NULL,
    CreatedBy   NUMBER(10) DEFAULT 0 NOT NULL,
    IsActive    CHAR(1) DEFAULT 'Y' CHECK (IsActive    IN ('Y','N')) NOT NULL,
    OnFriday    CHAR(1) DEFAULT 'N' CHECK (OnFriday    IN ('Y','N')) NOT NULL,
    OnMonday    CHAR(1) DEFAULT 'N' CHECK (OnMonday    IN ('Y','N')) NOT NULL,
    OnSaturday  CHAR(1) DEFAULT 'N' CHECK (OnSaturday  IN ('Y','N')) NOT NULL,
    OnSunday    CHAR(1) DEFAULT 'N' CHECK (OnSunday    IN ('Y','N')) NOT NULL,
    OnThursday  CHAR(1) DEFAULT 'N' CHECK (OnThursday  IN ('Y','N')) NOT NULL,
    OnTuesday   CHAR(1) DEFAULT 'N' CHECK (OnTuesday   IN ('Y','N')) NOT NULL,
    OnWednesday CHAR(1) DEFAULT 'N' CHECK (OnWednesday IN ('Y','N')) NOT NULL,
    Updated DATE DEFAULT SYSDATE NOT NULL,
    UpdatedBy               NUMBER(10) DEFAULT 0 NOT NULL,
    Z_BPartner_Replenish_ID NUMBER(10) NOT NULL,
    CONSTRAINT PK1003830 PRIMARY KEY (Z_BPartner_Replenish_ID)
  ) ;
  
  
CREATE UNIQUE INDEX "BP_UNIQUE" ON "Z_BPARTNER_REPLENISH"
  (
    "C_BPARTNER_ID"
  )  ;
  
  ---  alter table m_replenish et i_replenish
alter table M_Replenish ADD IsUseOrder_Pack    CHAR(1) DEFAULT 'Y' CHECK (IsUseOrder_Pack    IN ('Y','N')) NOT NULL ;
  
alter table I_Replenish ADD IsUseOrder_Pack    CHAR(1) DEFAULT 'Y' CHECK (IsUseOrder_Pack    IN ('Y','N')) NOT NULL ;

  
  
CREATE TABLE Z_Replenish
  (
    AD_Client_ID    NUMBER(10) NOT NULL,
    AD_Org_ID       NUMBER(10) NOT NULL,
    AD_PInstance_ID NUMBER(10) NOT NULL,
    C_BPartner_ID   NUMBER(10),
    Level_Max       NUMBER DEFAULT 0 NOT NULL,
    Level_Min       NUMBER DEFAULT 0 NOT NULL,
    M_Product_ID    NUMBER(10) NOT NULL,
    M_Warehouse_ID  NUMBER(10),
    Order_Pack      NUMBER DEFAULT 0 NOT NULL,
    QtyAvailable    NUMBER DEFAULT 0 NOT NULL,
    QtyOrdered      NUMBER DEFAULT 0 NOT NULL,
    QtyToOrder      NUMBER,
    QtyTrft         NUMBER,
    IsUseOrder_Pack    CHAR(1) DEFAULT 'Y' CHECK (IsUseOrder_Pack    IN ('Y','N')) NOT NULL,
    DocAction NVARCHAR2(10),
    RestrictBPartner CHAR(1) DEFAULT 'N' CHECK (RestrictBPartner IN ('Y','N')) NOT NULL,
    ReportOnly CHAR(1) DEFAULT 'N' CHECK (ReportOnly IN ('Y','N')) NOT NULL
  ) ;