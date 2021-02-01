update ad_field set seqno=35,issameline='Y' where name='Type de magasin' and ad_tab_id=(select ad_tab_id from ad_tab where value='Organization_143');
update ad_tab set name='Magasin' where value='Organization_143';
update ad_tab_trl set name='Magasin' where ad_tab_id=(select ad_tab_id from ad_tab where value='Organization_143');
update ad_process_para set ismandatory='Y' where name='Replenishment Type' and ad_process_id=(select ad_process_id from ad_process where value='Import_Replenish');
