CREATE OR REPLACE FORCE VIEW "AD_TAB_V" 
AS 
  
  SELECT t.AD_Tab_ID                            AS AD_Tab_ID,
    t.AD_Window_ID                              AS AD_Window_ID,
    t.AD_Table_ID                               AS AD_Table_ID,
    t.AD_CtxArea_ID                             AS AD_CtxArea_ID,
    uw.AD_Role_ID                               AS UserDef_Role_ID,
    uw.AD_User_ID                               AS AD_User_ID,
    uw.AD_UserDef_Win_ID                        AS AD_UserDef_Win_ID,
    uw.CustomizationName                        AS CustomizationName,
    u.AD_UserDef_Tab_ID                         AS AD_UserDef_Tab_ID,
    COALESCE(u.Name,t.Name)                     AS Name,
    COALESCE(u.Description,t.Description)       AS Description,
    COALESCE(u.Help,t.Help)                     AS Help,
    COALESCE(u.SeqNo,t.SeqNo)                   AS SeqNo,
    COALESCE(u.IsSingleRow,t.IsSingleRow)       AS IsSingleRow,
    t.HasTree                                   AS HasTree,
    t.IsInfoTab                                 AS IsInfoTab,
    t.Referenced_Tab_ID                         AS Referenced_Tab_ID,
    tbl.ReplicationType                         AS ReplicationType,
    tbl.TableName                               AS TableName,
    tbl.AccessLevel                             AS AccessLevel,
    tbl.IsSecurityEnabled                       AS IsSecurityEnabled,
    tbl.IsDeleteable                            AS IsDeleteable,
    tbl.IsHighVolume                            AS IsHighVolume,
    tbl.IsView                                  AS IsView,
    t.IsTranslationTab                          AS IsTranslationTab,
    COALESCE(u.IsReadOnly,t.IsReadOnly)         AS IsReadOnly,
    t.AD_Image_ID                               AS AD_Image_ID,
    t.TabLevel                                  AS TabLevel,
    t.WhereClause                               AS WhereClause,
    t.OrderByClause                             AS OrderByClause,
    t.CommitWarning                             AS CommitWarning,
    COALESCE(u.ReadOnlyLogic,t.ReadOnlyLogic)   AS ReadOnlyLogic,
    COALESCE(u.IsDisplayed,t.IsDisplayed)       AS IsDisplayed,
    COALESCE(u.DisplayLogic,t.DisplayLogic)     AS DisplayLogic,
    t.AD_Column_ID                              AS AD_Column_ID,
    c.ColumnName                                AS LinkColumnName,
    t.AD_Process_ID                             AS AD_Process_ID,
    t.IsSortTab                                 AS IsSortTab,
    t.IsAdvancedTab                             AS IsAdvancedTab,
    COALESCE(u.IsInsertRecord,t.IsInsertRecord) AS IsInsertRecord,
    t.AD_ColumnSortOrder_ID                     AS AD_ColumnSortOrder_ID,
    t.AD_ColumnSortYesNo_ID                     AS AD_ColumnSortYesNo_ID,
    t.Included_Tab_ID                           AS Included_Tab_ID,
    t.AD_QuickInfo_ID                           AS AD_QuickInfo_ID
  FROM AD_Tab t
  INNER JOIN AD_Table tbl
  ON (t.AD_Table_ID = tbl.AD_Table_ID)
  LEFT OUTER JOIN AD_Column c
  ON (t.AD_Column_ID=c.AD_Column_ID)
  LEFT OUTER JOIN AD_UserDef_Tab u
  ON (u.AD_Tab_ID=t.AD_Tab_ID)
  LEFT OUTER JOIN AD_UserDef_Win uw
  ON (uw.AD_UserDef_Win_ID=u.AD_UserDef_Win_ID)
  WHERE t.IsActive        ='Y'
  AND tbl.IsActive        ='Y';
/