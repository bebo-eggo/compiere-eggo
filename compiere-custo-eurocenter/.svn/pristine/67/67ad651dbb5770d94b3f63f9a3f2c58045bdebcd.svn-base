insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'2JJT','2JJT_FIN : Intrastat Report : ajout d''une colonne "Quantité"',
'FIN : Intrastat Report : ajout d''une colonne "Quantité"',
'',
'Y',
'',
'',
'',
'N',
'361',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = '2JJT' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2JJT_FIN : Intrastat Report : ajout d''une colonne "Quantité"', description = 'FIN : Intrastat Report : ajout d''une colonne "Quantité"', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2JJT' ;

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'QtyInvoiced' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_IntrastatReport')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = '1000552' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Declaration TVA INTERVAT')),
'Quantity Invoiced',
'Invoiced Quantity',
22,
'',
'2JJT',
'The Invoiced Quantity indicates the quantity of a product that has been invoiced.',
'',
160,
0,
'Y',
'Y',
'Y',
'N',
'N',
'N',
'N',
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
160
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'QtyInvoiced' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_IntrastatReport'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1000552' and ad_window_id in (select ad_window_id from ad_window where value = 'Declaration TVA INTERVAT')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = '1000552' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Declaration TVA INTERVAT')), name = 'Quantity Invoiced', description = 'Invoiced Quantity', displaylength = 22, displaylogic = '', entitytype = '2JJT', help = 'The Invoiced Quantity indicates the quantity of a product that has been invoiced.', obscuretype = '', seqno = 160, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 160 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'QtyInvoiced' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_IntrastatReport'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1000552' and ad_window_id in (select ad_window_id from ad_window where value = 'Declaration TVA INTERVAT'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyInvoiced' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_IntrastatReport')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1000552' and ad_window_id in (select ad_window_id from ad_window where value = 'Declaration TVA INTERVAT'))), 'fr_FR', 'Y', 'Indique la quantité d''un article qui a été facturée.','Quantité','Quantité'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyInvoiced' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_IntrastatReport')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1000552' and ad_window_id in (select ad_window_id from ad_window where value = 'Declaration TVA INTERVAT'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Indique la quantité d''un article qui a été facturée.',Description = 'Quantité',Name = 'Quantité' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyInvoiced' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_IntrastatReport')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1000552' and ad_window_id in (select ad_window_id from ad_window where value = 'Declaration TVA INTERVAT'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyInvoiced' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_IntrastatReport')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1000552' and ad_window_id in (select ad_window_id from ad_window where value = 'Declaration TVA INTERVAT'))), 'nl_NL', 'Y', 'Geeft aan hoeveel er van een product al gefactureerd is.','Gefactureerde Hoeveelheid.','Gefactureerde Hoeveelheid'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyInvoiced' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_IntrastatReport')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1000552' and ad_window_id in (select ad_window_id from ad_window where value = 'Declaration TVA INTERVAT'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Geeft aan hoeveel er van een product al gefactureerd is.',Description = 'Gefactureerde Hoeveelheid.',Name = 'Gefactureerde Hoeveelheid' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyInvoiced' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_IntrastatReport')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1000552' and ad_window_id in (select ad_window_id from ad_window where value = 'Declaration TVA INTERVAT'))) and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2JJT_FIN : Intrastat Report : ajout d''une colonne "Quantité"', description = 'FIN : Intrastat Report : ajout d''une colonne "Quantité"', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2JJT' ;

