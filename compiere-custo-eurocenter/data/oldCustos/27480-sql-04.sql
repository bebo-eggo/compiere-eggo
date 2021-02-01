INSERT
INTO AD_IMPFORMAT
  (
    AD_IMPFORMAT_ID,
    AD_CLIENT_ID,
    AD_ORG_ID,
    ISACTIVE,
    CREATED,
    CREATEDBY,
    UPDATED,
    UPDATEDBY,
    NAME,
    DESCRIPTION,
    AD_TABLE_ID,
    FORMATTYPE,
    PROCESSING
  )
  VALUES
  (
    AD_SEQUENCE_NEXTNO('AD_ImpFormat'),0,0,
    'Y',
    sysdate,
    100,
    sysdate,
    100,
    'Import Replenish',
    NULL,
    (select ad_table_id from ad_table where tablename='I_Replenish'),
    'S',
    'N'
  );


Insert into AD_IMPFORMAT_ROW (AD_IMPFORMAT_ROW_ID,AD_CLIENT_ID,AD_ORG_ID,ISACTIVE,CREATED,CREATEDBY,UPDATED,UPDATEDBY,AD_IMPFORMAT_ID,SEQNO,NAME,AD_COLUMN_ID,STARTNO,ENDNO,DATATYPE,DATAFORMAT,DECIMALPOINT,DIVIDEBY100,CONSTANTVALUE,CALLOUT,SCRIPT) values (AD_SEQUENCE_NEXTNO('AD_ImpFormat_Row'),0,0,'Y',sysdate,100,sysdate,100,
(select ad_impformat_id from ad_impformat where  name='Import Replenish'),
50,'Niveau Minimum',
(select ad_column_ID from AD_Column where ad_table_id = (select ad_table_id from ad_table where tablename='I_Replenish') and columnname = 'Level_Min'),
5,0,'N',null,'.','N',null,null,null);

Insert into AD_IMPFORMAT_ROW (AD_IMPFORMAT_ROW_ID,AD_CLIENT_ID,AD_ORG_ID,ISACTIVE,CREATED,CREATEDBY,UPDATED,UPDATEDBY,AD_IMPFORMAT_ID,SEQNO,NAME,AD_COLUMN_ID,STARTNO,ENDNO,DATATYPE,DATAFORMAT,DECIMALPOINT,DIVIDEBY100,CONSTANTVALUE,CALLOUT,SCRIPT) values (AD_SEQUENCE_NEXTNO('AD_ImpFormat_Row'),0,0,'Y',sysdate,100,sysdate,100,
(select ad_impformat_id from ad_impformat where  name='Import Replenish'),
60,'Niveau Maximum',
(select ad_column_ID from AD_Column where ad_table_id = (select ad_table_id from ad_table where tablename='I_Replenish') and columnname = 'Level_Max'),
6,0,'N',null,'.','N',null,null,null);

Insert into AD_IMPFORMAT_ROW (AD_IMPFORMAT_ROW_ID,AD_CLIENT_ID,AD_ORG_ID,ISACTIVE,CREATED,CREATEDBY,UPDATED,UPDATEDBY,AD_IMPFORMAT_ID,SEQNO,NAME,AD_COLUMN_ID,STARTNO,ENDNO,DATATYPE,DATAFORMAT,DECIMALPOINT,DIVIDEBY100,CONSTANTVALUE,CALLOUT,SCRIPT) values (AD_SEQUENCE_NEXTNO('AD_ImpFormat_Row'),0,0,'Y',sysdate,100,sysdate,100,
(select ad_impformat_id from ad_impformat where  name='Import Replenish'),
40,'Code article',
(select ad_column_ID from AD_Column where ad_table_id = (select ad_table_id from ad_table where tablename='I_Replenish') and columnname = 'Value_M_Product'),
4,0,'S',null,'.','N',null,null,null);

Insert into AD_IMPFORMAT_ROW (AD_IMPFORMAT_ROW_ID,AD_CLIENT_ID,AD_ORG_ID,ISACTIVE,CREATED,CREATEDBY,UPDATED,UPDATEDBY,AD_IMPFORMAT_ID,SEQNO,NAME,AD_COLUMN_ID,STARTNO,ENDNO,DATATYPE,DATAFORMAT,DECIMALPOINT,DIVIDEBY100,CONSTANTVALUE,CALLOUT,SCRIPT) values (AD_SEQUENCE_NEXTNO('AD_ImpFormat_Row'),0,0,'Y',sysdate,100,sysdate,100,
(select ad_impformat_id from ad_impformat where  name='Import Replenish'),
10,'Type de magasin',
(select ad_column_ID from AD_Column where ad_table_id = (select ad_table_id from ad_table where tablename='I_Replenish') and columnname = 'Value_TypeMagasin'),
1,0,'S',null,'.','N',null,null,null);

Insert into AD_IMPFORMAT_ROW (AD_IMPFORMAT_ROW_ID,AD_CLIENT_ID,AD_ORG_ID,ISACTIVE,CREATED,CREATEDBY,UPDATED,UPDATEDBY,AD_IMPFORMAT_ID,SEQNO,NAME,AD_COLUMN_ID,STARTNO,ENDNO,DATATYPE,DATAFORMAT,DECIMALPOINT,DIVIDEBY100,CONSTANTVALUE,CALLOUT,SCRIPT) values (AD_SEQUENCE_NEXTNO('AD_ImpFormat_Row'),0,0,'Y',sysdate,100,sysdate,100,
(select ad_impformat_id from ad_impformat where  name='Import Replenish'),
20,'Code magasin',
(select ad_column_ID from AD_Column where ad_table_id = (select ad_table_id from ad_table where tablename='I_Replenish') and columnname = 'Value_Org'),
2,0,'S',null,'.','N',null,null,null);

Insert into AD_IMPFORMAT_ROW (AD_IMPFORMAT_ROW_ID,AD_CLIENT_ID,AD_ORG_ID,ISACTIVE,CREATED,CREATEDBY,UPDATED,UPDATEDBY,AD_IMPFORMAT_ID,SEQNO,NAME,AD_COLUMN_ID,STARTNO,ENDNO,DATATYPE,DATAFORMAT,DECIMALPOINT,DIVIDEBY100,CONSTANTVALUE,CALLOUT,SCRIPT) values (AD_SEQUENCE_NEXTNO('AD_ImpFormat_Row'),0,0,'Y',sysdate,100,sysdate,100,
(select ad_impformat_id from ad_impformat where  name='Import Replenish'),
30,'Code famille',
(select ad_column_ID from AD_Column where ad_table_id = (select ad_table_id from ad_table where tablename='I_Replenish') and columnname = 'Value_M_Product_Category'),
3,0,'S',null,'.','N',null,null,null);

