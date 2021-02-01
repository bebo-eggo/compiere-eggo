UPDATE AD_FIELD
SET ISCENTRALLYMAINTAINED = 'N', name = 'Utilisateur alternatif'
WHERE AD_COLUMN_ID = (SELECT AD_Column_ID FROM AD_Column WHERE COLUMNNAME='Substitute_ID' AND AD_Table_ID=642) 
AND AD_Tab_ID = (SELECT AD_Tab_ID FROM AD_Tab WHERE Value ='User Substitute_573');

UPDATE AD_FIELD_TRL SET NAME='Utilisateur alternatif', description='Utilisateur alternatif', help='Utilisateur alternatif'
WHERE AD_FIELD_ID = (SELECT AD_FIELD_ID FROM AD_FIELD WHERE AD_COLUMN_ID = (SELECT AD_Column_ID FROM AD_Column WHERE COLUMNNAME='Substitute_ID' AND AD_Table_ID=642) 
AND AD_Tab_ID = (SELECT AD_Tab_ID FROM AD_Tab WHERE Value ='User Substitute_573'));