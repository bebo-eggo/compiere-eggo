update ad_table set isdownsynchronized = 'Y', syncsequence = 150,frequencylevel=10 where tablename = 'M_Locator';
update ad_table set isdownsynchronized = 'Y', syncsequence = 160,frequencylevel=10 where tablename = 'M_StorageDetail';
update AD_Field set isActive = 'N' where AD_COLUMN_ID in (select ad_column_id from ad_column where name = 'FrequencyLevel');
update ad_table set Z_SYNCHOLEVEL_ID = (select Z_SYNCHOLEVEL_ID from z_syncholevel where seqno = 0) where isdownsynchronized = 'Y'; 
update ad_table set Z_SYNCHOLEVEL_ID = (select Z_SYNCHOLEVEL_ID from z_syncholevel where seqno = 10) where tablename = 'M_Locator'; 
update ad_table set Z_SYNCHOLEVEL_ID = (select Z_SYNCHOLEVEL_ID from z_syncholevel where seqno = 10) where tablename = 'M_StorageDetail'; 