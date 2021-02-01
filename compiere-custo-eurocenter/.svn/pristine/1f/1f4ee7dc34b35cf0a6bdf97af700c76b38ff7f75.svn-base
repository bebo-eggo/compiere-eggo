set feedback off
set echo off
set trimspool on
set termout off
set serveroutput on size 100000 format wrapped
set lines 10000
set pages 0

spool tableListe.txt

declare
  c number;
  CURSOR Cur_Table IS select GETTABLESTOSYNC from dual;
begin

	FOR a IN Cur_Table LOOP
		dbms_output.put_line(a.GETTABLESTOSYNC);
	END LOOP;
end;
/

spool off

exit