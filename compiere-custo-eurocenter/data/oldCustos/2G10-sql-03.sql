update ad_field set displaylogic = concat('@C_DocTypeTarget_ID@=' , (select c_doctype_id from c_doctype where name like 'Vente NEC24' ) )
where name like 'Ajouter un paiement' and ad_tab_id = (select ad_tab_id from ad_tab where value like 'Order_186 ' and ad_window_id =
( select ad_window_id from ad_window where value like 'Sales Order Cuis' ) ) ;

update ad_field set displaylogic = concat('@C_DocTypeTarget_ID@=' , (select c_doctype_id from c_doctype where name like 'Vente NEC24' ) )
where name like 'Action Logistique' and ad_tab_id = (select ad_tab_id from ad_tab where value like 'Order_186 ' and ad_window_id =
( select ad_window_id from ad_window where value like 'Sales Order Cuis' ) ) ;