UPDATE AD_MESSAGE set MSGTEXT = '361.48.0' where Value = 'VersionSmile';
UPDATE AD_MESSAGE_TRL set MSGTEXT = '361.48.0' where AD_MESSAGE_ID = ( Select AD_MESSAGE_ID from AD_MESSAGE where Value = 'VersionSmile');
UPDATE AD_Process set ClassName = 'com.audaxis.compiere.eurocenter.process.CopyPA', ProcedureName = null where AD_Process_ID = 1005279;