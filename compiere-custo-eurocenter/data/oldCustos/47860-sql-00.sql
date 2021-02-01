delete from AD_Process_Para where columnname = 'IsFinancementIncluded' and ad_process_id in (select ad_process_id from ad_process where value in ('Z_BalanceTiers','ZBalanceAgee'));
