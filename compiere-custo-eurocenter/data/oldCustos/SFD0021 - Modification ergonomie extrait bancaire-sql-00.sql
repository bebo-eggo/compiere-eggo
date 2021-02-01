delete from AD_Window_Access where  AD_window_ID= (select AD_window_ID from AD_window where value like 'CLOSING CASH');

insert into ad_window_access (ad_client_id, ad_org_id, ad_role_id, ad_window_id, isActive, isReadWrite) values 
((select ad_client_id from ad_client where value like 'EGGO'), 0,
(select ad_role_id from ad_role where name like 'EGGO Vendeur'),
(select ad_window_id from ad_window where name like 'CLOSING CASH'), 'Y', 'Y');

insert into ad_window_access (ad_client_id, ad_org_id, ad_role_id, ad_window_id, isActive, isReadWrite) values 
((select ad_client_id from ad_client where value like 'EU'), 0,
(select ad_role_id from ad_role where name like 'Gerant'),
(select ad_window_id from ad_window where name like 'CLOSING CASH'), 'Y', 'Y');

delete from AD_Window_Access where  AD_window_ID= (select AD_window_ID from AD_window where value like 'Deposit Bank');

insert into ad_window_access (ad_client_id, ad_org_id, ad_role_id, ad_window_id, isActive, isReadWrite) values 
((select ad_client_id from ad_client where value like 'EGGO'), 0,
(select ad_role_id from ad_role where name like 'EGGO Vendeur'),
(select ad_window_id from ad_window where name like 'Deposit Bank'), 'Y', 'Y');

insert into ad_window_access (ad_client_id, ad_org_id, ad_role_id, ad_window_id, isActive, isReadWrite) values 
((select ad_client_id from ad_client where value like 'EU'), 0,
(select ad_role_id from ad_role where name like 'Gerant'),
(select ad_window_id from ad_window where name like 'Deposit Bank'), 'Y', 'Y');
