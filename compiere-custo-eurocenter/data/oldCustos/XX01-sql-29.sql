UPDATE AD_MESSAGE set MSGTEXT = '361.39.0' where Value = 'VersionSmile';
UPDATE AD_MESSAGE_TRL set MSGTEXT = '361.39.0' where AD_MESSAGE_ID = ( Select AD_MESSAGE_ID from AD_MESSAGE where Value = 'VersionSmile');