update ad_impformat_row set ad_column_id = 
( select ad_column_id from ad_column where columnname ='User1Value' and ad_table_id = (select ad_table_id from ad_table where tablename = 'I_GLJournal') )
where name like 'CC' 
and ad_impformat_id = (select ad_impformat_id from ad_impformat where  name like 'Import des OD compta générale') ;

update ad_impformat_row set ad_column_id = 
( select ad_column_id from ad_column where columnname ='ProjectValue' and ad_table_id = (select ad_table_id from ad_table where tablename = 'I_GLJournal') )
where name like 'Projet' 
and ad_impformat_id = (select ad_impformat_id from ad_impformat where  name like 'Import des OD compta générale') ;
