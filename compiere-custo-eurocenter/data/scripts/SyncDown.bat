@echo off
:CHECK_COMPIERE
@if not "%COMPIERE_HOME%" == "" goto COMPIERE_HOME_OK
Set COMPIERE_HOME=C:\appli\Compiere2
:COMPIERE_HOME_OK
@Echo COMPIERE_HOME is %COMPIERE_HOME%
set CLASSPATH=%COMPIERE_HOME%\lib\Compiere.jar;%COMPIERE_HOME%\lib\CompiereCLib.jar

java -Xms32m -Xmx512m -DCOMPIERE_HOME=%COMPIERE_HOME% -DPropertyFile=%COMPIERE_HOME%\Compiere.properties -Djava.awt.headless=false -Dbatchmode=Y %SECURE% -classpath %CLASSPATH% com.audaxis.compiere.batch.Main -client "Eurocenter" -lang "English" -user "SuperUser" -pwd "System" -role "Eurocenter Admin" -printer "none" -processclass "com.audaxis.compiere.sync.process.SyncDownProcess" >> syncDown.log  2>>syncDown.err
