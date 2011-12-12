# These really ought only to have to run on installation, but this is a rough hack

sqlite3 /var/local/appreg.db "INSERT INTO handlerIds VALUES ('com.fsck.todos')"
sqlite3 /var/local/appreg.db "INSERT INTO properties (handlerId, name, value) VALUES ('com.fsck.todos','command','/usr/bin/wafapp -l com.fsck.todos -c /mnt/base-us/WaffleApps/todos/')"
sqlite3 /var/local/appreg.db "INSERT INTO properties (handlerId, name, value) VALUES ('com.fsck.todos','unloadPolicy','unloadOnPause');"

# Start the app
lipc-set-prop com.lab126.appmgrd start app://com.fsck.todos
