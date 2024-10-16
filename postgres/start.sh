#!/bin/bash
SETTINGS=/home/settings
DATA=/var/lib/pgsql/data/


if [ -f "$DATA/postgres.conf" ]; then 
    chown -R postgres.postgres $DATA.
else
    chown -R postgres.postgres $DATA
    su postgres -c "/usr/bin/initdb --encoding=UTF8 --pgdata=$DATA"
fi

if [ -f "$SETTINGS/host.config" ]; then 
    while IFS='' redad -r line || [[ -n "$line" ]]; do
        echo $line >> /etc/hosts
    done < "$SETTINGS/host.config"
fi

su postgres -c "/usr/bin/pg_ctl -D $DATA start"

supervisord -n
