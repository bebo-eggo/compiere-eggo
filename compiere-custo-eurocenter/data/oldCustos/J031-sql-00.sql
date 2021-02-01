ALTER TABLE AD_Table ADD IsDownSynchronized CHAR(1) DEFAULT 'N' CHECK (IsDownSynchronized IN ('Y','N')) NOT NULL;
ALTER TABLE AD_Table ADD SyncSequence NUMBER(10) DEFAULT 0;
update ad_table set syncsequence = 0;

CREATE TABLE Z_Sync_Database (
    AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, 
    Created DATE DEFAULT SYSDATE NOT NULL, CreatedBy NUMBER(10) DEFAULT 0 NOT NULL, 
    DatabaseLinkName NVARCHAR2(60), IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, 
    IsDefault CHAR(1) DEFAULT 'Y' CHECK (IsDefault IN ('Y','N')) NOT NULL, Name NVARCHAR2(60), 
    Updated DATE DEFAULT SYSDATE NOT NULL, UpdatedBy NUMBER(10) DEFAULT 0 NOT NULL, 
    Z_Sync_Database_ID NUMBER(10) NOT NULL, 
    CONSTRAINT PK1000968 PRIMARY KEY (Z_Sync_Database_ID));

ALTER TABLE Z_Sync_Database ADD LastSynchronization DATE DEFAULT sysdate - 2000;
ALTER TABLE AD_Table ADD IsDownSynchronizedBP CHAR(1) DEFAULT 'N' CHECK (IsDownSynchronizedBP IN ('Y','N')) NOT NULL;
ALTER TABLE Z_Sync_Database ADD LastSynchronizationBP DATE DEFAULT sysdate;
ALTER TABLE Z_Sync_Database ADD Z_DBHost NVARCHAR2(208);
ALTER TABLE Z_Sync_Database ADD Z_DBPwd NVARCHAR2(208);
ALTER TABLE Z_Sync_Database ADD Z_DBUser NVARCHAR2(208);
