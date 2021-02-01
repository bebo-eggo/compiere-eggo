ALTER TABLE C_Invoice ADD VendorDocNum VARCHAR2(30);
update Ad_Field set Isdefaultfocus = 'N' where  AD_Tab_ID=290;
update Ad_Field set Isdefaultfocus = 'Y' where  AD_Tab_ID=290 and name='Target Doc Type';
