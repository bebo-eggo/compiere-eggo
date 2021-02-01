CREATE OR REPLACE FORCE VIEW "AD_TAB_VT"
AS
  SELECT trl.AD_Language                        AS AD_LANGUAGE,
    t.AD_Tab_ID                                 AS AD_TAB_ID,
    t.AD_Window_ID                              AS AD_WINDOW_ID,
    t.AD_Table_ID                               AS AD_TABLE_ID,
    t.AD_CtxArea_ID                             AS AD_CTXAREA_ID,
    uw.AD_Role_ID                               AS USERDEF_ROLE_ID,
    uw.AD_User_ID                               AS AD_USER_ID,
    uw.AD_UserDef_Win_ID                        AS AD_USERDEF_WIN_ID,
    uw.CustomizationName                        AS CUSTOMIZATIONNAME,
    u.AD_UserDef_Tab_ID                         AS AD_USERDEF_TAB_ID,
    COALESCE(u.Name,trl.Name)                   AS NAME,
    COALESCE(u.Description,trl.Description)     AS DESCRIPTION,
    COALESCE(u.Help,trl.Help)                   AS HELP,
    COALESCE(u.SeqNo,t.SeqNo)                   AS SEQNO,
    COALESCE(u.IsSingleRow,t.IsSingleRow)       AS ISSINGLEROW,
    t.HasTree                                   AS HASTREE,
    t.IsInfoTab                                 AS ISINFOTAB,
    t.Referenced_Tab_ID                         AS REFERENCED_TAB_ID,
    tbl.ReplicationType                         AS REPLICATIONTYPE,
    tbl.TableName                               AS TABLENAME,
    tbl.AccessLevel                             AS ACCESSLEVEL,
    tbl.IsSecurityEnabled                       AS ISSECURITYENABLED,
    tbl.IsDeleteable                            AS ISDELETEABLE,
    tbl.IsHighVolume                            AS ISHIGHVOLUME,
    tbl.IsView                                  AS ISVIEW,
    t.IsTranslationTab                          AS ISTRANSLATIONTAB,
    COALESCE(u.IsReadOnly,t.IsReadOnly)         AS ISREADONLY,
    t.AD_Image_ID                               AS AD_IMAGE_ID,
    t.TabLevel                                  AS TABLEVEL,
    t.WhereClause                               AS WHERECLAUSE,
    t.OrderByClause                             AS ORDERBYCLAUSE,
    t.CommitWarning                             AS COMMITWARNING,
    COALESCE(u.ReadOnlyLogic,t.ReadOnlyLogic)   AS READONLYLOGIC,
    COALESCE(u.IsDisplayed,t.IsDisplayed)       AS ISDISPLAYED,
    COALESCE(u.DisplayLogic,t.DisplayLogic)     AS DISPLAYLOGIC,
    t.AD_Column_ID                              AS AD_COLUMN_ID,
    c.ColumnName                                AS LINKCOLUMNNAME,
    t.AD_Process_ID                             AS AD_PROCESS_ID,
    t.IsSortTab                                 AS ISSORTTAB,
    t.IsAdvancedTab                             AS ISADVANCEDTAB,
    COALESCE(u.IsInsertRecord,t.IsInsertRecord) AS ISINSERTRECORD,
    t.AD_ColumnSortOrder_ID                     AS AD_COLUMNSORTORDER_ID,
    t.AD_ColumnSortYesNo_ID                     AS AD_COLUMNSORTYESNO_ID,
    t.Included_Tab_ID                           AS INCLUDED_TAB_ID,
    t.AD_QuickInfo_ID                           AS AD_QUICKINFO_ID
  FROM AD_Tab t
  INNER JOIN AD_Tab_Trl trl
  ON (t.AD_Tab_ID = trl.AD_Tab_ID)
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
