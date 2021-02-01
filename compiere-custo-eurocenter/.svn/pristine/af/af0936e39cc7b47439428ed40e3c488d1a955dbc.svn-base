@echo off
mkdir tmp
cd tmp
jar -xvf ..\..\jboss\server\compiere\deploy\apps.ear

mkdir images
cd images
copy /Y ..\..\login_logo.png .
copy /Y ..\..\logo_Compiere.png .
copy /Y ..\..\tagline.png .
copy /Y ..\..\compiere-splash.png ..
cd ..
jar -uvf apps.war images\login_logo.png images\logo_Compiere.png images\tagline.png compiere-splash.png
rd /S /Q images
del compiere-splash.png
jar -cvf ..\apps.ear *
cd ..
rd /S /Q tmp
copy /Y apps.ear ..\jboss\server\compiere\deploy\
del apps.ear