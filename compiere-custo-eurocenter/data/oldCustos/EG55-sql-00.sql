ALTER TABLE ZSubPaymentRule ADD IsFinancement CHAR(1) DEFAULT 'N' CHECK(IsFinancement IN ('Y','N')) NOT NULL;
ALTER TABLE ZSubPaymentRule ADD M_Product_ID NUMBER(10); 
ALTER TABLE ZSubPaymentRule ADD CONSTRAINT FK1000126_1022138 FOREIGN KEY (M_Product_ID) REFERENCES M_Product (M_Product_ID);
ALTER TABLE C_Invoice ADD IsFinancement CHAR(1) DEFAULT 'N' CHECK (IsFinancement IN ('Y','N'));
ALTER TABLE Z_OrderVDPayment ADD Z_NumAccept NVARCHAR2(40);
ALTER TABLE Z_OrderPaymSchedule ADD Z_Complet CHAR(1) DEFAULT 'N' CHECK (Z_Complet IN ('Y','N')) NOT NULL; 
ALTER TABLE Z_OrderPaymSchedule ADD Z_DateEnvCont DATE; 
ALTER TABLE Z_OrderPaymSchedule ADD Z_DateEnvAtt DATE; 

insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EG55','EG55 - Gestion des finanacements',
'',
'',
'Y',
'',
'',
'',
'N',
'1',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = 'EG55' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EG55 - Gestion des finanacements', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EG55' ;

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_NumAccept',(select AD_Element_ID from AD_Element where ColumnName = 'Z_NumAccept'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_OrderVDPayment'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EG55',
40,
'',
'Numéro d''acceptation',
'',
0,
'',
'',
0,
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'Y',
'',
'',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'Z_NumAccept'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVDPayment'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_NumAccept'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_OrderVDPayment'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EG55', fieldlength = 40, help = '', name = 'Numéro d''acceptation', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_NumAccept'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVDPayment');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_NumAccept' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVDPayment')), 'nl_NL', 'Y', 'Numéro d''acceptation'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_NumAccept' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVDPayment')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Numéro d''acceptation' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_NumAccept' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVDPayment')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_NumAccept' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVDPayment')), 'fr_FR', 'Y', 'Numéro d''acceptation'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_NumAccept' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVDPayment')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Numéro d''acceptation' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_NumAccept' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVDPayment')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsFinancement',(select AD_Element_ID from AD_Element where ColumnName = 'IsFinancement'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZSubPaymentRule'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'EG55',
1,
'',
'IsFinancement',
'',
0,
'',
'',
0,
'',
'Y',
'N',
'N',
'N',
'N',
'Y',
'N',
'N',
'N',
'Y',
'',
'',
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'IsFinancement'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsFinancement'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZSubPaymentRule'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'EG55', fieldlength = 1, help = '', name = 'IsFinancement', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsFinancement'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')), 'nl_NL', 'Y', 'IsFinancement'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IsFinancement' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')), 'fr_FR', 'Y', 'IsFinancement'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IsFinancement' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'M_Product_ID',(select AD_Element_ID from AD_Element where ColumnName = 'M_Product_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZSubPaymentRule'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Product, Service, Item',
'EG55',
22,
'Identifies an item which is either purchased or sold in this organization.',
'Product',
'@IsFinancement@=N',
0,
'',
'',
0,
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'Y',
'',
'',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'M_Product_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'M_Product_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZSubPaymentRule'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Product, Service, Item', entitytype = 'EG55', fieldlength = 22, help = 'Identifies an item which is either purchased or sold in this organization.', name = 'Product', readonlylogic = '@IsFinancement@=N', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'M_Product_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')), 'nl_NL', 'Y', 'Product'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Product' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')), 'fr_FR', 'Y', 'Article'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Article' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsFinancement',(select AD_Element_ID from AD_Element where ColumnName = 'IsFinancement'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_Invoice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'EG55',
1,
'',
'IsFinancement',
'1=1',
0,
'',
'',
0,
'',
'Y',
'N',
'N',
'N',
'N',
'Y',
'N',
'N',
'N',
'Y',
'',
'',
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'IsFinancement'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsFinancement'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Invoice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'EG55', fieldlength = 1, help = '', name = 'IsFinancement', readonlylogic = '1=1', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsFinancement'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')), 'nl_NL', 'Y', 'IsFinancement'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IsFinancement' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')), 'fr_FR', 'Y', 'IsFinancement'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IsFinancement' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_NumAccept' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVDPayment')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Order_VD_Paiement' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')),
'Numéro d''acceptation',
'',
40,
'',
'EG55',
'',
'',
0,
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_NumAccept' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVDPayment'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_VD_Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Order_VD_Paiement' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')), name = 'Numéro d''acceptation', description = '', displaylength = 40, displaylogic = '', entitytype = 'EG55', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_NumAccept' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVDPayment'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_VD_Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_NumAccept' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVDPayment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_VD_Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'nl_NL', 'Y', '','','Numéro d''acceptation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_NumAccept' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVDPayment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_VD_Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Numéro d''acceptation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_NumAccept' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVDPayment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_VD_Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_NumAccept' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVDPayment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_VD_Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'fr_FR', 'Y', '','','Numéro d''acceptation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_NumAccept' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVDPayment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_VD_Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Numéro d''acceptation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_NumAccept' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVDPayment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_VD_Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Sous méthode de paiement_Sous Methode de Paiement' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sous méthode de paiement')),
'Product',
'Product, Service, Item',
22,
'@IsFinancement@=Y',
'EG55',
'Identifies an item which is either purchased or sold in this organization.',
'',
230,
0,
'Y',
'Y',
'Y',
'N',
'N',
'N',
'N',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Sous méthode de paiement_Sous Methode de Paiement' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sous méthode de paiement')), name = 'Product', description = 'Product, Service, Item', displaylength = 22, displaylogic = '@IsFinancement@=Y', entitytype = 'EG55', help = 'Identifies an item which is either purchased or sold in this organization.', obscuretype = '', seqno = 230, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'))), 'nl_NL', 'Y', 'Product, service of item.','Geeft een item aan dat  ofwel gekocht, ofwel verkocht wordt binnen deze organisatie.','Product'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Product, service of item.',Help = 'Geeft een item aan dat  ofwel gekocht, ofwel verkocht wordt binnen deze organisatie.',Name = 'Product' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'))), 'fr_FR', 'Y', 'Produit service etc?','Identifie un article vendu ou acheté par cette organisation.','Article'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Produit service etc?',Help = 'Identifie un article vendu ou acheté par cette organisation.',Name = 'Article' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Sous méthode de paiement_Sous Methode de Paiement' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sous méthode de paiement')),
'IsFinancement',
'',
1,
'',
'EG55',
'',
'',
220,
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Sous méthode de paiement_Sous Methode de Paiement' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sous méthode de paiement')), name = 'IsFinancement', description = '', displaylength = 1, displaylogic = '', entitytype = 'EG55', help = '', obscuretype = '', seqno = 220, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'))), 'nl_NL', 'Y', '','','IsFinancement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsFinancement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'))), 'fr_FR', 'Y', '','','IsFinancement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsFinancement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Invoice_263' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Invoice (Customer)_167')),
'IsFinancement',
'',
1,
'',
'EG55',
'',
'',
250,
0,
'Y',
'Y',
'Y',
'N',
'N',
'N',
'N',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_263' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Customer)_167')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Invoice_263' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Invoice (Customer)_167')), name = 'IsFinancement', description = '', displaylength = 1, displaylogic = '', entitytype = 'EG55', help = '', obscuretype = '', seqno = 250, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_263' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Customer)_167'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_263' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Customer)_167'))), 'nl_NL', 'Y', '','','IsFinancement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_263' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Customer)_167'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsFinancement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_263' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Customer)_167'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_263' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Customer)_167'))), 'fr_FR', 'Y', '','','IsFinancement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_263' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Customer)_167'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsFinancement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsFinancement' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_263' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Customer)_167'))) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EG55 - Gestion des finanacements', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EG55' ;

