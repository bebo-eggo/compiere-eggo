update AD_Process set description='Import General Journal/Line' where value='Import_GLJournal';
update AD_Process_Trl set description='Importation des journaux journaux/lignes' where 
AD_Process_ID=(select AD_Process_ID from AD_Process Where value='Import_GLJournal')
and AD_Language='fr_FR';
update AD_Field set isDisplayed='N' WHERE ad_column_id=(select ad_column_id from ad_column where columnname='GL_JournalBatch_ID'
and ad_table_id=(select ad_table_id from ad_table where tablename='I_GLJournal')) ;