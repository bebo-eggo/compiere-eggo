--
-- script pour creation de l'utilisateur 'MAGASIN'
--
SET HEADING OFF
SET LINESIZE 512
SET PAGESIZE 0
SPOOL &3
DROP USER &1 CASCADE;
CREATE USER &1 PROFILE "DEFAULT" IDENTIFIED BY &2 
DEFAULT TABLESPACE "USERS" 
ACCOUNT UNLOCK;

GRANT CONNECT, RESOURCE TO &1;
GRANT CREATE TABLE TO &1;
GRANT CREATE VIEW TO &1;
GRANT CREATE DATABASE LINK TO &1;
REVOKE UNLIMITED TABLESPACE FROM &1;
ALTER USER &1 QUOTA UNLIMITED ON "USERS";

SPOOL OFF

EXIT