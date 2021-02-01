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
    (SELECT MAX(AD_IMPFORMAT_ID)+1 FROM AD_IMPFORMAT
    )
    ,
    (SELECT AD_CLIENT_ID FROM AD_CLIENT WHERE name = 'System'
    ),
    (SELECT AD_Org_ID FROM AD_Org WHERE name = '*'
    ),
    'Y',
    sysdate,
    100,
    sysdate,
    100,
    'Import Réception fournisseur',
    'Import Réception fournisseur',
    (SELECT AD_Table_ID FROM AD_Table WHERE tablename = 'I_Inout'
    ),
    'S',
    'N'
  );
  
INSERT
INTO AD_IMPFORMAT_ROW
  (
    AD_IMPFORMAT_ROW_ID,
    AD_CLIENT_ID,
    AD_ORG_ID,
    ISACTIVE,
    CREATED,
    CREATEDBY,
    UPDATED,
    UPDATEDBY,
    AD_IMPFORMAT_ID,
    SEQNO,
    NAME,
    AD_COLUMN_ID,
    STARTNO,
    ENDNO,
    DATATYPE,
    DATAFORMAT,
    DECIMALPOINT,
    DIVIDEBY100,
    CONSTANTVALUE,
    CALLOUT,
    SCRIPT
  )
  VALUES
  (
    (SELECT MAX(AD_IMPFORMAT_ROW_ID)+1 FROM AD_IMPFORMAT_ROW
    )
    ,
    (SELECT AD_CLIENT_ID FROM AD_CLIENT WHERE name = 'System'
    ),
    (SELECT AD_Org_ID FROM AD_Org WHERE name = '*'
    ),
    'Y',
    sysdate,
    100,
    sysdate,
    100,
    (SELECT AD_IMPFORMAT_ID
    FROM AD_IMPFORMAT
    WHERE NAME = 'Import Réception fournisseur'
    ),
    10,
    'Magasin',
    (SELECT AD_COLUMN_ID
    FROM AD_COLUMN
    WHERE COLUMNNAME = 'OrgValue'
    AND AD_Table_ID  =
      (SELECT ad_table_id FROM ad_table WHERE tablename = 'I_Inout'
      )
    ),
    1,
    0,
    'S',
    NULL,
    '.',
    'N',
    NULL,
    NULL,
    NULL
  );
  
INSERT
INTO AD_IMPFORMAT_ROW
  (
    AD_IMPFORMAT_ROW_ID,
    AD_CLIENT_ID,
    AD_ORG_ID,
    ISACTIVE,
    CREATED,
    CREATEDBY,
    UPDATED,
    UPDATEDBY,
    AD_IMPFORMAT_ID,
    SEQNO,
    NAME,
    AD_COLUMN_ID,
    STARTNO,
    ENDNO,
    DATATYPE,
    DATAFORMAT,
    DECIMALPOINT,
    DIVIDEBY100,
    CONSTANTVALUE,
    CALLOUT,
    SCRIPT
  )
  VALUES
  (
    (SELECT MAX(AD_IMPFORMAT_ROW_ID)+1 FROM AD_IMPFORMAT_ROW
    )
    ,
    (SELECT AD_CLIENT_ID FROM AD_CLIENT WHERE name = 'System'
    ),
    (SELECT AD_Org_ID FROM AD_Org WHERE name = '*'
    ),
    'Y',
    sysdate,
    100,
    sysdate,
    100,
    (SELECT AD_IMPFORMAT_ID
    FROM AD_IMPFORMAT
    WHERE NAME = 'Import Réception fournisseur'
    ),
    20,
    'Tiers fournisseur',
    (SELECT AD_COLUMN_ID
    FROM AD_COLUMN
    WHERE COLUMNNAME = 'BPartnerValue'
    AND AD_Table_ID  =
      (SELECT ad_table_id FROM ad_table WHERE tablename = 'I_Inout'
      )
    ),
    2,
    0,
    'S',
    NULL,
    '.',
    'N',
    NULL,
    NULL,
    NULL
  );
  
INSERT
INTO AD_IMPFORMAT_ROW
  (
    AD_IMPFORMAT_ROW_ID,
    AD_CLIENT_ID,
    AD_ORG_ID,
    ISACTIVE,
    CREATED,
    CREATEDBY,
    UPDATED,
    UPDATEDBY,
    AD_IMPFORMAT_ID,
    SEQNO,
    NAME,
    AD_COLUMN_ID,
    STARTNO,
    ENDNO,
    DATATYPE,
    DATAFORMAT,
    DECIMALPOINT,
    DIVIDEBY100,
    CONSTANTVALUE,
    CALLOUT,
    SCRIPT
  )
  VALUES
  (
    (SELECT MAX(AD_IMPFORMAT_ROW_ID)+1 FROM AD_IMPFORMAT_ROW
    )
    ,
    (SELECT AD_CLIENT_ID FROM AD_CLIENT WHERE name = 'System'
    ),
    (SELECT AD_Org_ID FROM AD_Org WHERE name = '*'
    ),
    'Y',
    sysdate,
    100,
    sysdate,
    100,
    (SELECT AD_IMPFORMAT_ID
    FROM AD_IMPFORMAT
    WHERE NAME = 'Import Réception fournisseur'
    ),
    30,
    'Article',
    (SELECT AD_COLUMN_ID
    FROM AD_COLUMN
    WHERE COLUMNNAME = 'ProductValue'
    AND AD_Table_ID  =
      (SELECT ad_table_id FROM ad_table WHERE tablename = 'I_Inout'
      )
    ),
    3,
    0,
    'S',
    NULL,
    '.',
    'N',
    NULL,
    NULL,
    NULL
  );
  
INSERT
INTO AD_IMPFORMAT_ROW
  (
    AD_IMPFORMAT_ROW_ID,
    AD_CLIENT_ID,
    AD_ORG_ID,
    ISACTIVE,
    CREATED,
    CREATEDBY,
    UPDATED,
    UPDATEDBY,
    AD_IMPFORMAT_ID,
    SEQNO,
    NAME,
    AD_COLUMN_ID,
    STARTNO,
    ENDNO,
    DATATYPE,
    DATAFORMAT,
    DECIMALPOINT,
    DIVIDEBY100,
    CONSTANTVALUE,
    CALLOUT,
    SCRIPT
  )
  VALUES
  (
    (SELECT MAX(AD_IMPFORMAT_ROW_ID)+1 FROM AD_IMPFORMAT_ROW
    )
    ,
    (SELECT AD_CLIENT_ID FROM AD_CLIENT WHERE name = 'System'
    ),
    (SELECT AD_Org_ID FROM AD_Org WHERE name = '*'
    ),
    'Y',
    sysdate,
    100,
    sysdate,
    100,
    (SELECT AD_IMPFORMAT_ID
    FROM AD_IMPFORMAT
    WHERE NAME = 'Import Réception fournisseur'
    ),
    40,
    'Quantité',
    (SELECT AD_COLUMN_ID
    FROM AD_COLUMN
    WHERE COLUMNNAME = 'QtyOrdered'
    AND AD_Table_ID  =
      (SELECT ad_table_id FROM ad_table WHERE tablename = 'I_Inout'
      )
    ),
    4,
    0,
    'S',
    NULL,
    '.',
    'N',
    NULL,
    NULL,
    NULL
  );
  
INSERT
INTO AD_IMPFORMAT_ROW
  (
    AD_IMPFORMAT_ROW_ID,
    AD_CLIENT_ID,
    AD_ORG_ID,
    ISACTIVE,
    CREATED,
    CREATEDBY,
    UPDATED,
    UPDATEDBY,
    AD_IMPFORMAT_ID,
    SEQNO,
    NAME,
    AD_COLUMN_ID,
    STARTNO,
    ENDNO,
    DATATYPE,
    DATAFORMAT,
    DECIMALPOINT,
    DIVIDEBY100,
    CONSTANTVALUE,
    CALLOUT,
    SCRIPT
  )
  VALUES
  (
    (SELECT MAX(AD_IMPFORMAT_ROW_ID)+1 FROM AD_IMPFORMAT_ROW
    )
    ,
    (SELECT AD_CLIENT_ID FROM AD_CLIENT WHERE name = 'System'
    ),
    (SELECT AD_Org_ID FROM AD_Org WHERE name = '*'
    ),
    'Y',
    sysdate,
    100,
    sysdate,
    100,
    (SELECT AD_IMPFORMAT_ID
    FROM AD_IMPFORMAT
    WHERE NAME = 'Import Réception fournisseur'
    ),
    50,
    'NÂ° OA',
    (SELECT AD_COLUMN_ID
    FROM AD_COLUMN
    WHERE COLUMNNAME = 'PurchaseOrderNO'
    AND AD_Table_ID  =
      (SELECT ad_table_id FROM ad_table WHERE tablename = 'I_Inout'
      )
    ),
    5,
    0,
    'S',
    NULL,
    '.',
    'N',
    NULL,
    NULL,
    NULL
  );
