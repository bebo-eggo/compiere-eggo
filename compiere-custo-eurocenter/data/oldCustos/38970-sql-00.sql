delete from AD_Window_Access where  AD_window_ID= (select AD_window_ID from AD_window where value like 'Depotenbanque');

insert into ad_window_access (ad_client_id, ad_org_id, ad_role_id, ad_window_id, isActive, isReadWrite) values 
((select ad_client_id from ad_client where value like 'EGGO'), 0,
(select ad_role_id from ad_role where name like 'EGGO Vendeur'),
(select ad_window_id from ad_window where Value like 'Depotenbanque'), 'Y', 'Y');

insert into ad_window_access (ad_client_id, ad_org_id, ad_role_id, ad_window_id, isActive, isReadWrite) values 
((select ad_client_id from ad_client where value like 'EU'), 0,
(select ad_role_id from ad_role where name like 'Gerant'),
(select ad_window_id from ad_window where Value like 'Depotenbanque'), 'Y', 'Y');

delete from AD_Window_Access where ad_role_id = (select ad_role_id from ad_role where name like 'EGGO Vendeur') 
AND AD_window_ID= (select AD_window_ID from AD_window where Name like 'Document Type');

insert into ad_window_access (ad_client_id, ad_org_id, ad_role_id, ad_window_id, isActive, isReadWrite) values 
((select ad_client_id from ad_client where value like 'EGGO'), 0,
(select ad_role_id from ad_role where name like 'EGGO Vendeur'),
(select ad_window_id from ad_window where Name like 'Document Type'), 'Y', 'Y');

insert into ad_window_access (ad_client_id, ad_org_id, ad_role_id, ad_window_id, isActive, isReadWrite) values 
((select ad_client_id from ad_client where value like 'EU'), 0,
(select ad_role_id from ad_role where name like 'Gerant'),
(select ad_window_id from ad_window where Name like 'Document Type'), 'Y', 'Y');
