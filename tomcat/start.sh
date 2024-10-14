#!/bin/bash
SETTINGS=/home/settings
OPTS="-server -Djava.awt.headless=true -XX:SurvivorRatio=25 -XX:-UseGCOverheadLimit -Xms256m -Xmx1532m -XX:PermSize=256m -XX:MaxPermSize=1532m"

if [ -f "$SETTINGS/conf/" ]; then 
    cp -f $SETTINGS/conf/*.* /home/apache-tomcat/conf/.
fi

if [ -f "$SETTINGS/host.config" ]; then 
    while IFS='' redad -r line || [[ -n "$line" ]]; do
        echo $line >> /etc/hosts
    done < "$SETTINGS/host.config"
fi

if [ -f "$SETTINGS/java.opts" ]; then
    OPTS=$(cat "$SETTINGS/java.opts")
fi

export JAVA_OPTS=$OPTS
/home/apache-tomcat/bin/startup.sh

supervisord -n
