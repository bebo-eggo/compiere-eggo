update ad_tab
set whereclause = 
'(C_PayselectionLine.isActive=''Y'' AND ''Y''=(select OnlyActive from C_PaySelection where @C_PaySelection_ID@=C_PaySelection.C_PaySelection_ID)) OR ((''N''=(select OnlyActive from C_PaySelection where @C_PaySelection_ID@=C_PaySelection.C_PaySelection_ID)) AND (C_PayselectionLine.C_Payselection_ID=@C_PaySelection_ID@))'
where value = 'Payment Selection Line_353' and ad_window_id=(select ad_window_id from ad_window where  value='Payment Selection_206');
