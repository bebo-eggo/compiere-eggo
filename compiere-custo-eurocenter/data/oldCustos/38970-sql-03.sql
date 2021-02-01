UPDATE AD_Column SET DefaultValue = (SELECT AD_Window_ID FROM AD_Window WHERE Value LIKE 'Depotenbanque') WHERE ColumnName LIKE 'EtatCaisse_Zoom';
