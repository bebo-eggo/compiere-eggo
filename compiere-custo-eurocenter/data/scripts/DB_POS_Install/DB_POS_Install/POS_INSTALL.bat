@echo off
rem Script pour dupliquer une partie de la base centrale vers le serveur 'Magasin'
rem Schéma Origine=EUROCENTERTRA
rem Variables

rem ----------------------- Variables --------------------------------------

rem Dossier où se trouve ce script
set TOOLS_DIR=C:\DATABASE\DB_POS_Install\DB_POS_Install

rem mot de passe "System" de la base de données centrale
set SYS_PWD_ORG=Sa0rAcL3

rem Nom du schéma de la base de données centrale
set SCHEMA_ORG=EUROCENTERTRA

rem Mot de passe du schéma de la base de données centrale
set PWD_SCHEMA_ORG=compiere

rem SID de la base de données centrale
set ORACLE_SID_CENTRALE=192.168.250.136:1521/compiere

rem Mot de passe "System" d'Oracle XE du magasin
set SYS_PWD_DST=0r4cl3

rem --------------------------------------------------------------------------

echo "Veuillez saisir l'identification du magasin, exemple POS_abcdefg (max:30 car)"
set /p Identification_Magasin=
if "%Identification_Magasin%" == " " goto sortie_anormale
if "%Identification_Magasin%" == "" goto sortie_anormale
set SCHEMA_DST=%Identification_Magasin%
set PWD_SCHEMA_DST=compiere

rem set TABLES_LISTE=%SCHEMA_ORG%.AD_CLIENT,%SCHEMA_ORG%.AD_CLIENTINFO,%SCHEMA_ORG%.AD_ORG,%SCHEMA_ORG%.AD_ORGINFO,%SCHEMA_ORG%.AD_USER,%SCHEMA_ORG%.C_BP_GROUP,%SCHEMA_ORG%.C_BPARTNER,%SCHEMA_ORG%.C_BPARTNER_LOCATION,%SCHEMA_ORG%.C_CITY,%SCHEMA_ORG%.C_COUNTRY,%SCHEMA_ORG%.C_COUNTRY_TRL,%SCHEMA_ORG%.C_DOCTYPE,%SCHEMA_ORG%.C_GREETING,%SCHEMA_ORG%.C_LOCATION,%SCHEMA_ORG%.M_ATTRIBUTE,%SCHEMA_ORG%.M_ATTRIBUTEINSTANCE,%SCHEMA_ORG%.M_ATTRIBUTESET,%SCHEMA_ORG%.M_ATTRIBUTESETINSTANCE,%SCHEMA_ORG%.M_ATTRIBUTEUSE,%SCHEMA_ORG%.M_ATTRIBUTEVALUE,%SCHEMA_ORG%.M_COST,%SCHEMA_ORG%.M_PRICELIST,%SCHEMA_ORG%.M_PRICELIST_VERSION,%SCHEMA_ORG%.M_PRODUCT,%SCHEMA_ORG%.M_PRODUCT_CATEGORY,%SCHEMA_ORG%.M_PRODUCT_PO,%SCHEMA_ORG%.M_PRODUCTPRICE,%SCHEMA_ORG%.M_RELATEDPRODUCT,%SCHEMA_ORG%.M_SUBSTITUTE,%SCHEMA_ORG%.R_MAILTEXT,%SCHEMA_ORG%.Y_MARQUE,%SCHEMA_ORG%.AD_REF_LIST,%SCHEMA_ORG%.AD_REFERENCE,%SCHEMA_ORG%.C_BankAccount,%SCHEMA_ORG%.C_Bank,%SCHEMA_ORG%.Z_PosWfAction,%SCHEMA_ORG%.c_cash,%SCHEMA_ORG%.C_BankAccountDoc,%SCHEMA_ORG%.ZSUBPAYMENTRULE,%SCHEMA_ORG%.z_savstatus,%SCHEMA_ORG%.Z_S_FAMILLE,%SCHEMA_ORG%.Z_S_S_FAMILLE,%SCHEMA_ORG%.Z_S_S_S_FAMILLE,%SCHEMA_ORG%.AD_MESSAGE,%SCHEMA_ORG%.M_BOM,%SCHEMA_ORG%.M_BomProduct,%SCHEMA_ORG%.Z_PosPaymentRule,%SCHEMA_ORG%.Ad_Message_Trl,%SCHEMA_ORG%.Ad_Ref_List_Trl,%SCHEMA_ORG%.c_currency,%SCHEMA_ORG%.ad_sequence,%SCHEMA_ORG%.c_tax,%SCHEMA_ORG%.Z_TaxDocType,%SCHEMA_ORG%.Z_ProductTax,%SCHEMA_ORG%.M_Locator,%SCHEMA_ORG%.M_StorageDetail,%SCHEMA_ORG%.Z_TransferedQty,%SCHEMA_ORG%.AD_Language,%SCHEMA_ORG%.Z_OrgPos,%SCHEMA_ORG%.ZPosNumber,%SCHEMA_ORG%.Z_OrderMsg,%SCHEMA_ORG%.Z_Gamme,%SCHEMA_ORG%.Z_LockPOS,%SCHEMA_ORG%.C_BankStatement

sqlplus -s %SCHEMA_ORG%/%PWD_SCHEMA_ORG%@%ORACLE_SID_CENTRALE% @sql\tablesToSync.sql
for /f "tokens=*" %%a in (tableListe.txt) do (
  set TABLES_LISTE=%%a
)

cd /D %TOOLS_DIR%
mkdir %TOOLS_DIR%\log


rem Modification parametres Base Oracle
sqlplus sys/%SYS_PWD_DST%@XE as sysdba @sql\mod-base.sql log\mod-base.log


rem Creation de l'utilisateur 'Magasin'
sqlplus sys/%SYS_PWD_DST%@XE as sysdba @sql\create-user.sql %sCHEMA_DST% %PWD_SCHEMA_DST% log\create-user.log


rem Export des données depuis la base centrale 
exp system/%SYS_PWD_ORG%@%ORACLE_SID_CENTRALE% file=%TOOLS_DIR%\expdmp.dmp log=%TOOLS_DIR%\log\expdmp.log statistics=none tables=%TABLES_LISTE% query='where ad_client_id in (1000022,0)'


rem Import des donnees dans la base Magasin
imp system/%SYS_PWD_DST%@XE fromuser=%SCHEMA_ORG% touser=%SCHEMA_DST% file=%TOOLS_DIR%\expdmp.dmp log=%TOOLS_DIR%\log\impdmp.log


rem Creation des tables pos
sqlplus sys/%SYS_PWD_DST%@XE as sysdba @sql\create-pos-tables.sql %SCHEMA_DST% %PWD_SCHEMA_DST% XE

rem Creation des vues pour les jaspers
sqlplus sys/%SYS_PWD_DST%@XE as sysdba @sql\jasperView.sql %SCHEMA_DST% %PWD_SCHEMA_DST% XE

rem Creation de la fonction adnextno
sqlplus sys/%SYS_PWD_DST%@XE as sysdba @sql\create-fct-adnextno.sql %SCHEMA_DST% %PWD_SCHEMA_DST% XE

rem Désactivation des contraintes
sqlplus sys/%SYS_PWD_DST%@XE as sysdba @sql\DisableConstraints.sql %SCHEMA_DST% %PWD_SCHEMA_DST% XE

rem Ajout d'un DB Link vers la centrale
sqlplus %SCHEMA_DST%/%PWD_SCHEMA_DST%@XE @sql\createDBLink.sql %SCHEMA_ORG% %PWD_SCHEMA_ORG% %ORACLE_SID_CENTRALE%

pause
exit
: sortie_anormale
pause
exit
