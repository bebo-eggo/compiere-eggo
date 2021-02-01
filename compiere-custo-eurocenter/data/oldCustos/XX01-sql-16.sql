UPDATE AD_MESSAGE set MSGTEXT = '2.3.0025.0' where Value = 'VersionPOS';
UPDATE AD_MESSAGE_TRL set MSGTEXT = '2.3.0025.0' where AD_MESSAGE_ID = (Select AD_MESSAGE_ID from AD_MESSAGE where Value = 'VersionPOS');
UPDATE AD_MESSAGE set MSGTEXT = '361.28.0' where Value = 'VersionSmile';
UPDATE AD_MESSAGE_TRL set MSGTEXT = '361.28.0' where AD_MESSAGE_ID = ( Select AD_MESSAGE_ID from AD_MESSAGE where Value = 'VersionSmile');