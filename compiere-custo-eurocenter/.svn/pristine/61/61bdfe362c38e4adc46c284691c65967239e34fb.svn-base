#bin/bash
#
#
echo Go !;
export COMPIERE_HOME=/opt/compiere/Compiere361;
export CLASSPATH=$COMPIERE_HOME/lib/CompiereCLib.jar:$CLASSPATH;
java -Xms32m -Xmx512m -DCOMPIERE_HOME=$COMPIERE_HOME -Dpo.prefix=Z,M -Dpo.packages=com.audaxis.compiere -Dru.compiere.report.path=$COMPIERE_HOME/jboss/server/compiere/deploy/audaxis.ear/jasper.war -DPropertyFile=$COMPIERE_HOME/Compiere.properties -Djava.awt.headless=true -Dbatchmode=Y -classpath $CLASSPATH org.compiere.util.batch.Main -client "MENATAM S.A." -org "EGGO" -wh "0100 Administration" -lang "English" -user "SuperUser" -pwd "System" -role "EGGO Admin" -printer ""    "$@";
echo "** ENDING   **" `date +"%Y-%m-%d %H:%M:%S"` " - SHELL=" $0 " ARGS=" $* " => PID=" $$ >>$COMPIERE_HOME/log/audit.log;

